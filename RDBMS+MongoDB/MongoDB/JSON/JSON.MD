Employees table 以下为员工信息表及其数据
{
  "RECORDS": [
    {
      "ID": "1",
      "Name": "QQ",
      "Age": "23",
      "Phone": "123456",
      "Address": "XXX",
      "In_time": "25/2/2020 00:00:00",
      "Out_time": "",
      "IdentifyNumbs": "111111111",
      "Salary": "3000"
    },
    {
      "ID": "2",
      "Name": "WW",
      "Age": "21",
      "Phone": "123321",
      "Address": "XXXC",
      "In_time": "22/3/2020 00:00:00",
      "Out_time": "",
      "IdentifyNumbs": "222222222",
      "Salary": "3400"
    },
    {
      "ID": "3",
      "Name": "EE",
      "Age": "19",
      "Phone": "558975",
      "Address": "SSWQ",
      "In_time": "23/4/2019 00:00:00",
      "Out_time": "",
      "IdentifyNumbs": "333333333",
      "Salary": "3100"
    },
    {
      "ID": "4",
      "Name": "RR",
      "Age": "24",
      "Phone": "558935",
      "Address": "WSQS",
      "In_time": "22/8/2018 00:00:00",
      "Out_time": "22/4/2021 00:00:00",
      "IdentifyNumbs": "444444444",
      "Salary": "4500"
    },
    {
      "ID": "5",
      "Name": "TT",
      "Age": "30",
      "Phone": "259752",
      "Address": "SQWE",
      "In_time": "21/6/2017 00:00:00",
      "Out_time": "21/5/2022 00:00:00",
      "IdentifyNumbs": "555555555",
      "Salary": "5300"
    }
  ]
}
Salary table 以下为员工工资发放情况表及其数据
{
  "RECORDS": [
    {
      "ID": "1",
      "BaseSalary": "3000",
      "BS_Get_Time": "25/3/2022 00:00:00",
      "YearsSalary": "2000",
      "Get_YearsSalary_state": "Y"
    },
    {
      "ID": "2",
      "BaseSalary": "3400",
      "BS_Get_Time": "22/2/2022 00:00:00",
      "YearsSalary": "2000",
      "Get_YearsSalary_state": "Y"
    },
    {
      "ID": "3",
      "BaseSalary": "3100",
      "BS_Get_Time": "12/3/2020 00:00:00",
      "YearsSalary": "1300",
      "Get_YearsSalary_state": "Y"
    },
    {
      "ID": "4",
      "BaseSalary": "4500",
      "BS_Get_Time": "15/4/2020 00:00:00",
      "YearsSalary": "3000",
      "Get_YearsSalary_state": "N"
    },
    {
      "ID": "1",
      "BaseSalary": "3000",
      "BS_Get_Time": "25/4/2022 00:00:00",
      "YearsSalary": "3000",
      "Get_YearsSalary_state": "Y"
    }
  ]
}
USER_COSTorPAY table 以下为用户消费情况表及其数据
{
  "RECORDS": [
    {
      "ID": "1",
      "COST_Time": "22/2/2021 00:00:00",
      "COST": "1000",
      "Pay_Time": "",
      "Pay": ""
    },
    {
      "ID": "1",
      "COST_Time": "12/3/2022 00:00:00",
      "COST": "1202",
      "Pay_Time": "12/3/2022 00:00:00",
      "Pay": "3000"
    },
    {
      "ID": "2",
      "COST_Time": "22/1/2021 00:00:00",
      "COST": "500",
      "Pay_Time": "",
      "Pay": ""
    },
    {
      "ID": "2",
      "COST_Time": "10/2/2021 00:00:00",
      "COST": "600",
      "Pay_Time": "10/2/2021 00:00:00",
      "Pay": "2000"
    }
  ]
}
USERACCOUNT Table 以下为用户账户信息表及其数据
{
  "RECORDS": [
    {
      "Name": "AA",
      "Account": "123456789",
      "Password": "123456",
      "Signup_time": "12/2/2022 00:00:00",
      "State": "Green",
      "Moneys": "201"
    },
    {
      "Name": "BB",
      "Account": "123654978",
      "Password": "123456",
      "Signup_time": "11/5/2022 00:00:00",
      "State": "Green",
      "Moneys": "2000"
    },
    {
      "Name": "CC",
      "Account": "524568566",
      "Password": "123456",
      "Signup_time": "11/3/2022 00:00:00",
      "State": "Green",
      "Moneys": "1210"
    }
  ]
}
USERS Table 以下为用户信息表及其数据
{
  "RECORDS": [
    {
      "ID": "1",
      "Name": "AA",
      "Age": "20",
      "Type": "Nom",
      "Phone": "123456789",
      "Signup_time": "10/2/2022 00:00:00"
    },
    {
      "ID": "2",
      "Name": "BB",
      "Age": "23",
      "Type": "Nom",
      "Phone": "123654978",
      "Signup_time": "14/3/2022 00:00:00"
    },
    {
      "ID": "3",
      "Name": "CC",
      "Age": "35",
      "Type": "Nom",
      "Phone": "524568566",
      "Signup_time": "25/4/2022 00:00:00"
    },
    {
      "ID": "4",
      "Name": "DD",
      "Age": "36",
      "Type": "VIP",
      "Phone": "5789426626",
      "Signup_time": "22/5/2022 00:00:00"
    },
    {
      "ID": "5",
      "Name": "FF",
      "Age": "32",
      "Type": "VIP",
      "Phone": "2165423168",
      "Signup_time": "22/1/2022 00:00:00"
    }
  ]
}
VIPlist table 以下为VIP名单表及其数据
{
  "RECORDS": [
    {
      "ID": "4",
      "Signup_time": "15/3/2022 00:00:00",
      "Level": "2"
    },
    {
      "ID": "5",
      "Signup_time": "11/6/2022 00:00:00",
      "Level": "3"
    }
  ]
}
以下为SQL中的USER_Money，用户余额视图
{
  "RECORDS": [
    {
      "Name": "AA",
      "Moneys": "201"
    },
    {
      "Name": "BB",
      "Moneys": "2000"
    },
    {
      "Name": "CC",
      "Moneys": "1210"
    }
  ]
}