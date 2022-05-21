# 数据库各类表
#订单表
#买家
#|姓名|联系方式|收货地址|支付方式|交易时间|
#|张三|1233456644|XX市YY区|支付宝|2022.2.23|
#|李四|2333214213|xx省YY市|微信|2022.4.22|
  constraint pk_买家 primary key(姓名)
  constraint FK_姓名_订单编号
  Foreign key (订单编号) references 买家(姓名)
#商品
#|名称|类别|编号|价格|数量|发货方式|
#|XX手机|电子设备|2292|2399|邮递|
#|打印机|电子设备|2231|1399|邮递|
  constraint pk_商品 primary key(名称)
#订单
#|订单编号|店铺名称|商品名称|商品数量|商品价格|买家信息|支付方式|交易时间|发货时间|货运方式|
#|12331|XXXX|XX手机|2|2399|YYYYYY|wx|2022.3.22|2022.3.23|邮递|
  constraint pk_订单 primary key(订单编号)
  constraint FK_订单编号_商品名称
  Foreign key (商品名称) references 订单(订单编号)
#网购平台
#|订单信息|商家反馈|买家反馈|商家申诉|买家申诉|
#|xxxx|ss|sdasda|asdsad|ljlj|
  constraint pk_网购平台 primary key(订单信息)
  constraint FK_订单信息_订单编号
  Foreign key (订单编号) references 网购平台(订单信息)
#商家
#|商品编号|商品名称|商品单价|商品数量|货运方式|收款方式|发票类型|
#|weqdsa|asdwad|2333|2|邮递|支付宝|电子|
  constraint pk_商家 primary key(商品编号)
  constraint FK_订单编号_商品编号
  Foreign key (订单编号) references 商家(商品编号)
#发票表
#客户
#|客户姓名|客户账号|客户ID|
#|xx|sssssssss|22222|
  constraint pk_客户 primary key(客户ID)
  constraint FK_发票编号_客户ID
  Foreign key (发票编号) references 客户(客户ID)
#商品
#|商品名称|价格|数量|商品ID|
#|sdad|2332|3|00003|
  constraint pk_商品 primary key(商品ID)
  constraint FK_发票编号_商品ID
  Foreign key (发票编号) references 商品(商品ID)
#发票
#|客户ID|商品ID|公司ID|开票人|开票时间|收款人|金额|发票编号|
#|0001|23232|2222|XXX|2002.3.22|YYY|2222|0003|
  constraint pk_发票 primary key(发票编号)
  constraint FK_发票编号_客户ID
  Foreign key (客户ID) references 发票(发票编号)
#公司
#|公司名称|公司类型|公司账户|公司ID|
#|XXXX|SSSS|222222222|0003|
  constraint pk_公司 primary key(公司ID)
  constraint FK_发票编号_公司ID
  Foreign key (发票编号) references 公司(公司ID)
#员工档案
#公司成员信息
#|员工ID|姓名|手机|Email|性别|年龄|地址|工龄|民族|
#|0001|XX|1234568|wwwwwww@kik.com|男|22|XXXXX|0|汉|
  constraint pk_公司成员信息 primary key(员工ID)
  constraint FK_员工ID_部门ID
  Foreign key (部门ID) references 公司成员信息(员工ID)
#部门经理
#|部门ID|员工ID|经理|
#|0001|0002|XXX|
  constraint pk_部门经理 primary key(部门ID)
  constraint FK_部门ID_部门ID
  Foreign key (部门ID) references 部门经理(部门ID)
#部门
#|部门ID|部门名|部门人数|
#|0002|KKKK|34|
  constraint pk_部门 primary key(部门ID)
#创建视图
#create view 员工档案查询
  AS select 部门经理.部门ID，公司成员信息.员工ID from 部门经理，公司成员信息 
#create view 部门查询
  AS select 部门经理.部门ID，部门.部门id from 部门经理，部门
#创建存储过程
#create proc login_out_login
  AS
  print 客户.账户
