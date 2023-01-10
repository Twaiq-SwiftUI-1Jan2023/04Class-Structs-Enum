class student{
    
    var firstName:String
    var lastName:String
    var age:Int
    var grade:Double
    var department: Department
    
    init(firstName: String, lastName: String, age: Int, grade: Double,department:Department) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.grade = grade
        self.department = department
    }
    
    func getFullName()->(String , String){
        return (firstName , lastName)
    }
    
}
struct Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

struct Rectangle{
    var width:Double
    var height:Double
    }

class Size{
    var width:Double
    var height:Double
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}
let Rectangle1 = Rectangle(width: 3, height: 4)
let size1 = Size(width: 3, height: 4)
let NadaStu = student(firstName: "Nada", lastName: "A", age: 24, grade: 100 , department: Department.ComputerScience)

print(NadaStu.getFullName())

let point1 = Point(x: 2, y: 3)
print("x point = \(point1.x) y point = \(point1.y)")


enum Department: String {
    case ComputerScience = "Computer Science"
    case Math = "Math"
    case English = "English"
    case Physics = "Physics"
}

print(NadaStu.department)
