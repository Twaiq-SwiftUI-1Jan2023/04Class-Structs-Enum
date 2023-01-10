//
//  main.swift
//  My-Students
//
//  Created by ahmed alharbi on 17/06/1444 AH.
//

import Foundation


enum Department {
    case Computer_Science
    case Math
    case English
    case Physics
}
class Student {
    let firstName: String
    let lastName: String
    let age: Int
    let grade: Int
    let department: Department
    
    init(firstName: String, lastName: String,age: Int, grade: Int, department: Department) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.grade = grade
        self.department = department
    }
    func getFullName(firstName: String, lastName: String) {
        
    }
}

var student = Student(firstName: "Ahmed", lastName: "alharbi", age: 35, grade: 99, department: .Computer_Science)
student.getFullName(firstName: "Huda", lastName: "Ali")
print(student)


struct Point {
    let x: Int
    let y: Int
    
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
    }
    
}

var path = Point(x: 98, y: 90)
print(path)


struct Rectangle {
    var width: Int
    var height: Int
}



class Size {
    var width: Int
    var height: Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    
}

var rectangle1 = Rectangle(width: 4, height: 6)
var rectangle2 = rectangle1
rectangle2.width = 55
rectangle2.height = 8
print(rectangle1.width)
print(rectangle2.width)

// The value not changed, the new value get's copy


var size1 = Size(width: 44, height: 66)
var size2 = size1
size2.width = 10
size2.height = 11
print(size1.width)
print(size2.width)

// The reference type is changed when we declare new constant or variable


extension Student: Comparable {
    static func < (lhs: Student, rhs: Student) -> Bool {
        return true
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        return true
    }
    
    
}
var students = [Student(firstName: "Ahmed", lastName: "Alharbi", age: 35, grade: 99, department: .Computer_Science), Student(firstName: "Albaraa", lastName: "Ali", age: 23, grade: 98, department: .English),Student(firstName: "Mohammed", lastName: "Fahad", age: 30, grade: 96, department: .Physics)]
students.sort()

print(students)

