//
//  main.swift
//  Assignment_4
//
//  Created by البراء سيت on 17/06/1444 AH.
//

import Foundation

class Student {
    var  firstName : String
    var  lastName : String
    var  age : Int
    var grade : Int
    var department : Department
    
    init(firstName : String ,lastName: String ,age :Int ,grade:Int , department : Department ){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.grade = grade
        self.department = department
    }
    
        func getfulname( ) -> String {
            return firstName + lastName
        }
}

struct Point {
    var x : Int
    var y : Int
    
        init(x: Int , y: Int ){
            self.x = x
            self.y = y
        }
}
enum Department {
   case ComputerScience, Math, English, Physics
}

var classObj = Student(firstName: "albaraa", lastName: "sait",age: 23,grade: 100, department:.ComputerScience  )
var result = classObj.getfulname()
print(result)
print("----------------------")

var structobj = Point(x: 5, y: 6)
print("x=\(structobj.x) y=\(structobj.y)")

print("----------------------")

//MARK: - Enums

struct Rectangle {
    var width : Int
    var hight : Int
}

class Size {
    var width : Int
    var hight : Int
    
    init(width : Int , hight : Int){
        self.width = width
        self.hight = hight
    }
    
}
var structobject = Rectangle(width: 5, hight: 6)
var classobject = Size(width: 5 , hight: 6)


var structobject1 = structobject
structobject1.width = 7
structobject1.hight = 7
print("structobject = \(structobject.width)")
print("cpoy of structobject = \(structobject1.width)")
print("----------------------")


var classobject1 = classobject
classobject1.width = 7
classobject1.hight = 7
print("classobject = \(classobject.width)")
print("cpoy of classobject = \(classobject1.width)")
print(" as we see the value in class chenged ")
print("----------------------")



print("----------Bonus------------------")
extension Student : Comparable {
    
//
    static func < (lhs: Student, rhs: Student) -> Bool {
        return lhs.firstName < rhs.firstName
    }

    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.lastName == lhs.lastName
    }


}
var extobj = [Student(firstName: "Albaraa", lastName: "sait", age: 33, grade: 22, department: .English),
              Student(firstName: "Khaled", lastName: "sait", age: 14, grade: 33, department: .ComputerScience),
              Student(firstName: "Fahad", lastName: "sait", age: 1, grade: 100, department: .English)]

extobj.sort()

for student in extobj {
    print(student.firstName ,student.firstName )
}
 









