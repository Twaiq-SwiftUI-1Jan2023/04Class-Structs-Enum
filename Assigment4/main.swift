
import Foundation

 

//Part 2: Enums
enum Department {
    case ComputerScience, Math, English, Physics
}
var dep : Department
dep = .ComputerScience
dep = .English
dep = .Math
dep = .Physics

//Part 1: Classes and Structs

class Student  {
    
    var firstName:String
    var lastName :String
    var age :Int
    var grade :String
    var department : Department
    
    init(firstName:String , lastName:String, age:Int , grade :String , department:Department){
        
        self.firstName = firstName
        self.lastName  = lastName
        self.age = age
        self.grade = grade
        self.department = department
        
    }
    
    func getFullName()-> String  {
    return self.firstName + self.lastName
    }
    
}


var std1 = Student(firstName: "Ali", lastName: "Mo", age: 22,grade: "B", department: Department.Physics)
std1.firstName="Ahmad "
std1.lastName="ALotaibi"
std1.age=20
std1.grade="A"
std1.department=Department.ComputerScience

print(std1.firstName,
      std1.lastName,
      std1.age,
      std1.grade,
      std1.department)

print(std1.getFullName())

struct Point {
    
    var x :Int = 0
    var y :Int = 0

    
}

var p1 = Point(x: 3, y: 4)
print(p1.x)
print(p1.y)


 //Part 3: Comparison


struct Rectangle {
    var width:Int
    var hight:Int
}

class Size {
    var width:Int = 0
    var hight:Int = 0
}

var Req  = Rectangle(width: 3, hight: 7)
var size = Size()


//Create an extension of Student class that conforms to Comparable protocol. Create a List of Student object, add some students and sort the list using sort() Print the sorted list of students
/*
extension Student {
    static func < (lhs: Student, rhs: Student) -> Bool {
        <#code#>
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        <#code#>
    }
    
   
   var  std :[String] = ""
    
}

*/
