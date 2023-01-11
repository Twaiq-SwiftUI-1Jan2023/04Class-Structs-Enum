
import Foundation
//Part 1: Classes and Structs

class Student{
    var firstname : String = ""
    var lastname : String = ""
    var age : Int = 0
    var grade : Int = 0
    var department : Department
    init(firstname: String, lastname: String, age: Int, grade: Int , department : Department) {
        self.firstname = firstname
        self.lastname = lastname
        self.age = age
        self.grade = grade
        self.department = Department.ComputerScience
    }
    func getfullname(){
        print(" \(firstname) \(lastname) \(department)")
    }
}

var abdullah = Student(firstname: "abdullah", lastname: "mohammed", age: 22, grade: 100 , department: .ComputerScience )
abdullah.getfullname()

struct Point{
    var x : Int
    var y : Int
    func sum(){
        print( x + y )
    }
}
var t = 10
t = 11
var p = Point(x: 3, y: 10)
print(p.sum())

// ------------------------------------------------------------
// Part 2: Enums and go class student in part 1 
enum Department{
    case ComputerScience , Math , English , pyhsia
}
  


// ------------------------------------------
// Part 3: Comparison

struct Rectangle{
    var width : Int
    var height : Int
}
class Size{
    var width : Int = 0
    var height : Int = 0


}
var re = Rectangle(width: 5, height: 10)
var si = Size()

/*Class
 you have must init values , يقبل الوراثة ,
 Both structs and classes can define properties to store values, and they can define functions
 They can define subscripts to provide access to values with subscript syntax
 They can define initializers to set up their initial state, with init()
 They can be extended with extension (this is important!)
 They can conform to protocols, for example to support Protocol Oriented Programming
 They can work with generics to provide flexible and reusable types */
