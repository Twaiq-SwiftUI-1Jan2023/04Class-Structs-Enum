//
//  main.swift
//  assignment 4
//
//  Created by RMP on 18/06/1444 AH.
//

import Foundation


class Student {
    
    let firstName: String
    let lastName: String
    let age: Int
    
    let department: Department
    
    init(firstName: String, lastName: String, age: Int, department: Department) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.department = department
    }
    
    
    func getFullName() -> String {
        
        return firstName + " " + lastName
        
    }
    
}

// ----------------------> Part 1
//let firstInstance = Student(firstName: "malcolm", lastName: "x", age: 47)
//print(firstInstance.getFullName())


// ----------------------> Part 2
let secondInstance = Student(firstName: "richard", lastName: "stallman", age: 54, department: .ComputerScience)
let computerDepartment = secondInstance.department
print("stallman in: \(computerDepartment)")


struct Point {
    
    let x: Int
    let y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
}


let structInstance = Point(x: 2, y: 7)
print("x: \(structInstance.x), y: \(structInstance.y)")


enum Department {
    
    case ComputerScience
    case Math
    case English
    case Physics
    
}



struct Rectangle {
    
    var width: Double
    var height: Double
    
}


class Size {
    
    var width: Double
    var height: Double
    
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
}


let instanceOfRectangle = Rectangle(width: 3.14, height: 4.5)
let instanceOfSize = Size(width: 12.9, height: 44.0)
var secondInstanceOfRectance = instanceOfRectangle
secondInstanceOfRectance.width = 0.0
print(instanceOfRectangle)
print(secondInstanceOfRectance)
// in s simple work struct is value type / class is reference type




// -----------------------------> Bonus
extension Student: Comparable {
    
    
    static func < (lhs: Student, rhs: Student) -> Bool {
        return lhs.firstName < rhs.firstName
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.firstName == rhs.firstName
    }
    
    static func > (lhs: Student, rhs: Student) -> Bool {
        return lhs.firstName > rhs.firstName
    }
    
}


var students = [
    
    Student(firstName: "jackson", lastName: "max", age: 65, department: .English),
    Student(firstName: "richard", lastName: "feynmann", age: 56, department: .Physics),
    Student(firstName: "veronca", lastName: "donovan", age: 44, department: .Math),
    Student(firstName: "bard", lastName: "lincoln", age: 37, department: .ComputerScience),
    Student(firstName: "alex", lastName: "cooper", age: 45, department: .Math)
    
]


// Un order
for i in students {
    
    print(i.firstName)
    
}


print()
print()
print()


// In order
students = students.sorted(by: { $0.firstName < $1.firstName })


for i in students {
    
    print(i.firstName)
    
}
