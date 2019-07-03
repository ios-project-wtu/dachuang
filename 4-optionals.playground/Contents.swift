
//可选类型
var hello = "Hello,World!"
var stringToNumber = Double(hello)

var stringOfNumber = "123"
stringToNumber = Double(stringOfNumber)

print(stringToNumber!)


var job: String?

//强制解析
var optionalNumber: Int? = 2
var sum = optionalNumber! + 3
print(optionalNumber!)

//print(job!)  //报错-展开一个空的可选类型

//空合运算符
print(job ?? "没有工作")
job = "工程师"
print(job ?? "没有工作")

//隐式i解析
var optionalDecimal: Double! = 2.5
optionalDecimal + 3
optionalDecimal = nil
//optionalDecimal + 3  //报错-展开一个空的可选类型

//if语句配合可选类型的展开
var optionalInt: Int? = 3
if optionalInt != nil
{
    print("可选类型optionalInt有值，值为\(optionalInt!)")
}


//可选绑定

var optionalDouble: Double? = 2.5
if let optionalDouble = optionalDouble{
    print("可选类型optionalDouble有值，值为\(optionalDouble)")
}

//guard语句的可绑定方式
func register(username: String?, password: String?) -> String
{
//    if let username = username
//    {
//        if let password = password
//        {
//            return "注册成功，用户名\(username),密码\(password)"
//        }
//        else{
//            return "密码未填写"
//        }
//    }
//    else{
//        return "用户名未填写"
//    }
    guard let username = username else {
        return "用户名未填写"
    }
    guard let password = password else {
        return "密码未填写"
    }
    return "注册成功，用户名\(username),密码\(password)"
}


print(register(username: "admin", password: nil))
print(register(username: "admin", password: "123456"))

