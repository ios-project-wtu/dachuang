//枚举
enum Direction
{
    case east
    case west
    case south
    case north
}

enum appleOS
{
    case iOS, MacOS, WatchOS, tvOS
}

var walk = Direction.north
walk = .east

//使用switch语句来匹配枚举值

switch walk {
case .east:
    print("正在往东走")
case .north:
    print("正在往北走")
case .south:
    print("正在往南走")
case .west:
    print("正在往西走")
}

var direction = Direction.east

switch direction {
case .east:
    print("正在往东走")
default:
    print("没有往东走")
}


//类和结构体

struct Resolution
{
    var width = 0
    var height = 0
}

class Player
{
    var name = ""
    var HP = 100
    var ATK = 30
}


//类和结构体实例

var resolution = Resolution()

var play1 = Player()
var play2 = Player()


//属性的访问和修改
resolution.height = 1080
resolution.width = 1920

play1.name = "玩家1"

play1.HP -= play2.ATK


//结构体的成员逐一构造函数

let vga = Resolution(width: 640, height: 480)
