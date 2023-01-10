//
//  main.swift
//  Classes-Structs-and-Enums
//
//  Created by Moha Bahusayn on 10/01/2023.
//

import Foundation

print("Hello, World!")

class Student {
    
    //Personal Information
    let firstName : String
    let lastName : String
    let age : Int
    var grade : Int = 0
    let department : Department
    init(firstName: String, lastName: String, age: Int, department: Department) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.department = department
    }
    //Get Full Name
    func getFullName()->String{
        return firstName + " " + lastName
    }
    
    
}

//A new Student Joined!
let saad = Student(firstName:"Saad",lastName: "Mohammed",age: 21, department: .computerScience)

//His full name is:
print(saad.getFullName())


struct Point {
    let x : Int
    let y : Int
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

let certainPoint = Point(x: 10, y: 15)
print("The value of point x is: \(certainPoint.x), and the value of point y is: \(certainPoint.y)")

enum Department : String {
    case computerScience = "Computer Science"
    case math = "Math"
    case english = "English"
    case physics = "Physics"
}

//What about his department?
print("\(saad.firstName) department is: \(saad.department.rawValue)")

struct Rectangle {
    let width : Double
    let height : Double
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

class Size {
    let width : Double
    let height : Double
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

let simpleRectangle = Rectangle(width: 10, height: 4)

let shapeSize = Size(width: 20, height: 8)

//This extension is taking the parameter age to sort the students list based on their age from young to old.
extension Student : Comparable {
    static func < (lhs: Student, rhs: Student) -> Bool {
        return lhs.age < rhs.age
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.age == rhs.age
    }
}

//the below examples of the students.
let sara = Student(firstName: "Sara", lastName: "Ahmd", age: 34, department: .computerScience)
let najwa = Student(firstName: "Najwa", lastName: "Adeeb", age: 21, department: .physics)
let mona = Student(firstName: "Mona", lastName: "Saleh", age: 35, department: .math)


//the below array adding the students to the list called : listOfStudent with NO SORTING.
var listOfStudent : [Student] = [sara,najwa,mona]

/* since we extend the Student class conforming Comarable Protocol,
we use the built-in .sort() to sort the list based on the age.
*/
 listOfStudent.sort()

//The below code will print the name : Najwa since she is the youngest among other students.
print(listOfStudent[0].firstName)
