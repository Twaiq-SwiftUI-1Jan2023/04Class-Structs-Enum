//
//  main.swift
//  Classes_Structs_Enums
//
//  Created by Amer Alyusuf on 10/01/2023.
//

import Foundation

// MARK: - Class Object - PART 1 & PART 3
//let myStudent = Student(firstName: "John", lastName: "Doe", age: 30)
let myStudent = Student(firstName: "Jack", lastName: "Sparrow", age: 31, department: .ComputerScience)
print(myStudent.getFullName())
print(myStudent.department)

// MARK: - Struct Object - PART 2
let newPoint = Point(x: 5, y: 7)
print("The point has coordinates: (x = \(newPoint.x), y = \(newPoint.y))")

// MARK: - Comparison - PART 3
// Class
let newSize = Size(width: 10, height: 15)
let newSize2 = newSize
newSize.height = 100
print("""
    \n
    CLASS
    When making a copy, changes in the original variable reflects on the copy (Pass by Reference)
    The first height is: \(newSize.height)
    The new height is: \(newSize2.height)
    \n
    Had to create an initializer with the Class
    + it can be de-initialized
    \n
    Class can inherit from other classes.
    + can use Protocols
""")

// Struct
var newRect = Rectangle(width: 10, height: 15)
var newRect2 = newRect
newRect.height = 100
print("""
    \n
    STRUCT
    When making a copy, changes in the original variable does not reflect on the copy (Pass by Value)
      The first height is: \(newRect.height)
      The new height is: \(newRect2.height)
    \n
    Initializing is automatic for Structs
    + it cannot be de-initialized
    \n
    Cannot inherit from other structs.
    can use Protocols.
    \n
""")

// MARK: - Creating and sorting a List
    // Sorted as declared in Comparable
var students: [Student] = [
    Student(firstName: "Bob", lastName: "Zee", age: 20, department: .English),
    Student(firstName: "Foo", lastName: "Bar", age: 20, department: .English),
    Student(firstName: "Bob", lastName: "Bee", age: 21, department: .Physics),
    Student(firstName: "Bob", lastName: "Jay", age: 24, department: .Math)
]

students.sort()

print("SORTING A LIST OF OBJECTS USING FIRST & LAST NAME:")
for student in students {
    print(student.firstName + " " + student.lastName)
}
