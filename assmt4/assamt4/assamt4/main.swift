//
//  main.swift
//  assamt4
//
//  Created by Abudulaziz on 17/06/1444 AH.
//

import Foundation

enum Department{
    case ComputerScience
    case Math
    case English
    case Physics
}
 class Student {

     var firstName : String
     var lastName : String
     var age : Int
     var department : String
     init(firstName: String, lastName: String, age: Int, department: String) {
         self.firstName = firstName
         self.lastName = lastName
         self.age = age
         self.department = department
     }
     
     func getFullName()->(String , String){
         return (firstName ,lastName)
     }


 }

let mans = Student.init(firstName: "mans", lastName: "aldwyan", age: 22, department: "d1")
 print(mans.getFullName())

 struct Point {
     let x : Int
     let y : Int
     
 }

struct Rectangle{
    var width:Double
    var height:Double
    }

class Size{
    var width:Double
    var height:Double
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}
let qqwe = Point.init(x: 2, y: 7)
print(qqwe)

let asd = Rectangle(width: 100, height: 200)
print(asd)
let fghn = Size.init(width: 200, height: 300)
print(fghn)
