import UIKit

var psRecord: Int = 0

class Contact
{
    func Add()
    {
        var x: String
        let c = Contact()
        print("请输入要添加的联系人姓名：")
        x = readLine()!
        for number in 0...psRecord-1
        {
            if x == ps[number].name
            {
                print("姓名重复，请重新输入")
                return
            }
        }
        c.name = x
        print("请输入联系人性别：")
        c.gender = readLine()!
        print("请输入联系人单位：")
        c.organization = readLine()!
        print("请输入联系人固定电话：")
        c.tel = readLine()!
        print("请输入联系人移动手机：")
        c.phone = readLine()!
        print("请输入联系人分类：")
        c.relationship = readLine()!
        print("请输入联系人Email：")
        c.Email = readLine()!
        print("请输入联系人QQ：")
        c.QQ = readLine()!
        ps[psRecord] = c
        psRecord += 1
        print("添加成功！")
    }
    
    func Find()
    {
        var m: String
        var c: Int = 0
        print("请输入要搜索的联系人的姓名或电话：")
        m = readLine()!
        for number in 0...psRecord-1
        {
            if m == ps[number].name || m == ps[number].phone || m == ps[number].tel
            {
                ps[number].Display()
                c += 1
                return
            }
        }
        if c == 0
        {
            print("无此联系人的信息！")
        }
    }
    
    func Show()
    {
        if psRecord == 0
        {
            print("记录为空")
            return
        }
        for number in 0...psRecord-1
        {
            ps[number].Output()
        }
    }
    
    func Alter()
    {
        let c = Contact()
        var n: String
        var i: Int = 0
        print("请输入要修改的联系人姓名：")
        n = readLine()!
        for number in 0...psRecord-1
        {
            i += 1
            if n == ps[number].name
            {
                break
            }
        }
        if i == psRecord
        {
            print("您的通讯录中无此联系人")
            return
        }
        c.name = n
        print("请输入修改后的联系人性别：")
        c.gender = readLine()!
        print("请输入要修改的联系人单位：")
        c.organization = readLine()!
        print("请输入要修改的联系人固定电话：")
        c.tel = readLine()!
        print("请输入要修改的联系人移动手机：")
        c.phone = readLine()!
        print("请输入要修改的联系人分类：")
        c.relationship = readLine()!
        print("请输入要修改的联系人Email：")
        c.Email = readLine()!
        print("请输入要修改的联系人QQ：")
        c.QQ = readLine()!
        ps[i] = c
        print("修改成功")
    }
    
    func Delete()
    {
        var i = 0
        var n: String
        print("请输入要删除的联系人的姓名：")
        n = readLine()!
        for number in 0...psRecord-1
        {
            i += 1
            if n == ps[number].name
            {
                break
            }
        }
        if i == psRecord
        {
            print("查无此人")
            return
        }
        for num in i...psRecord-1
        {
            ps[num] = ps[num+1]
        }
        psRecord -= 1
        print("删除成功")
    }
    func Output()
    {
        print(name, gender, organization, tel, phone, relationship, Email, QQ)
    }
    func Display()
    {
        print("联系人姓名：\(name)")
        print("联系人性别：\(gender)")
        print("联系人单位：\(organization)")
        print("联系人固定电话：\(tel)")
        print("联系人移动手机：\(phone)")
        print("联系人分类：\(relationship)")
        print("联系人Email：\(Email)")
        print("联系人QQ：\(QQ)")
    }
    var name: String = ""
    var gender: String = ""
    var organization: String = ""
    var tel: String = ""
    var phone: String = ""
    var relationship: String = ""
    var Email: String = ""
    var QQ: String = ""
}

var ps: Array<Contact>

func main()
{
    let c = Contact()
    var choice: String
    print("      ------------------通讯录管理系统------------------")
    print("      1.添加               2.查询                3.显示")
    print("      4.修改               5.删除                6.退出")
    print("请选择功能：")
    choice = readLine()!
    switch choice {
    case "1":
        c.Add()
    case "2":
        c.Find()
    case "3":
        c.Show()
    case "4":
        c.Alter()
    case "5":
        c.Delete()
    case "6":
        exit(1)
    default:
        print("请输入1-8之间的数字！")
    }
}
