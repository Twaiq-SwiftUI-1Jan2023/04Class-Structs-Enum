//
//  main.swift
//  MyProject
//
//  Created by Abdulkarim Koshak on 1/10/23.
//

import Foundation

/* Part 1: Classes & Structs */
class Student {
    let firstName: String
    let lastName: String
    let age: Int
    var grade: Double?
    let department: Department
    
    init(firstName: String, lastName: String, age: Int, department: Department) {
        self.firstName  = firstName
        self.lastName   = lastName
        self.age        = age
        self.department = department
    }
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
}

let student = Student(firstName: "Abdulkarim", lastName: "Koshak", age: 20, department: .computerScience)
print("Student: \(student.getFullName()), Department: \(student.department.rawValue)")

struct Point {
    let x: Int
    let y: Int
}

let somePoint = Point(x: 3, y: 4)
print("X: \(somePoint.x), Y: \(somePoint.y)")


/* Part 2: Enums */
enum Department: String {
    case computerScience = "Computer Science"
    case math            = "Math"
    case english         = "English"
    case physics         = "Physics"
}


/* Part 3: Comparison */
struct Rectangle {
    let width: Double
    let height: Double
}

class Size {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width  = width
        self.height = height
    }
}

let rectangle = Rectangle(width: 4.5, height: 5.0)

let size = Size(width: 4.5, height: 5.0)

/* Structures are value types. This means that any structure instances you create and any value types they have as properties are always copied when they're passed around in the code */

/* Classes are reference types. Unlike value types, reference types are not copied when they're assigned to a variable or constant. Rather than a copy, a reference to the same existing instance is used. */
