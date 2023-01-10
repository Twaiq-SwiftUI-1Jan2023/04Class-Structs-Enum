//
//  main.swift
//  Classes, Structs, and Enums in Swift
//
//  Created by Abdullah Aloufi on 17/06/1444 AH.
//

import Foundation

class Student {
    var firstName : String
    var lastName : String
    var age : Int
    var grade : Double
    var department : Department
    
    init(firstName: String, lastName: String, age: Int, grade: Double , department: Department) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.grade = grade
        self.department = department
    }
    
    func getFullName(){
        print(firstName + " "+lastName)
    }
    func getStudentInfo(){
        print("name :\(firstName) \(lastName) age: \(age) grade: \(grade) Dep: \(department)")
    }
}
let firstStudent = Student(firstName: "Abdullah", lastName: "Aloufi", age: 34, grade: 100 ,department: Department.cs)

print(firstStudent.getFullName())
//----------------------------------- 2 --------------------------------
struct Point {
    let x : Int
    let y : Int
}

let sharePoint = Point(x: 10, y: 20)

print(sharePoint)
//------------------------------------  3 ---------------------------------
enum Department : String {
    case cs = "Computer Science"
    case mth = "Math"
    case eng = "English"
    case phy = "Physics"
}
print(firstStudent.getStudentInfo())

//------------------------------------ 4 -----------------------------------

struct Rectangle{
    let width : Int
    let height : Int
}

class Size {
    let width : Int
    let height : Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

let rectangle1 = Rectangle(width: 4, height: 5)
let size = Size(width: 4, height: 5)

print(rectangle1)
print(size.height)

//------------------------------------- 5 ----------------------------------
let secondStudent = Student(firstName: "Adam", lastName: "Aloufi", age: 7, grade: 100 ,department: Department.phy)
let thirdStudent = Student(firstName: "Khaled", lastName: "Atem", age: 12, grade: 100 ,department: Department.eng)
let forthStudent = Student(firstName: "Sami", lastName: "Yousef", age: 25, grade: 100 ,department: Department.mth)

var storedStudent = [firstStudent , secondStudent , thirdStudent , forthStudent]

extension Student: Comparable {
    static func < (lhs: Student, rhs: Student) -> Bool {
        return lhs.age < rhs.age
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.age < rhs.age
    }
    
}

storedStudent.sort()


print(storedStudent[0].age)
print(storedStudent[1].age)
