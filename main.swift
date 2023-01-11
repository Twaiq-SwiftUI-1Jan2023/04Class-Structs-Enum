//
//  main.swift
//  Classe
//
//  Created by Batool on 10/1/2023.
//

import Foundation

//Part 1: Classes and Structs

class Student {
    var firstName : String
    var lastName : String
    var age : Int
    var grade : Int
    var depatrment : Department
    
    init(firstName: String, lastName: String, age: Int, grade: Int, department: Department) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.grade = grade
        self.depatrment = department
    }
    
    func getFullName() -> String {
        print(self.depatrment)
        return self.firstName + self.lastName
         
    }
    
}
    
var student1 = Student(firstName: "Batool ", lastName: "Zuhair", age: 22, grade: 3, department: .ComputerScience)

print(student1.getFullName())

struct Point {
    var x : Int
    var y : Int

    }

    var point1 = Point(x: 5,y: 7)
    print(point1)

//Part 2: Enums

enum Department {
    case ComputerScience, Math, English, Physics
}


//Part 3: Comparison

struct Rectangle {
    var width : Int
    var height : Int
}

class Size {
    var width : Int
    var height : Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

var rectangle1 = Rectangle(width: 4, height: 5)
var size1 = Size(width: 4, height: 5)

/*
Classes and Structures have pretty much similar syntax
Structures are value types, classes are reference types
Value Type holds the data within its own memory allocation
Reference Type contains a pointer to another memory location that holds the real data. */
