//
//  main.swift
//  Classes
//
//  Created by Judy Alshahrani on 17/06/1444 AH.
//

import Foundation
class Student{
   var  firstName:String
   var lastName:String
   var age :Int
   var grade :Int
   var d:String
   
   init(firstName: String, lastName: String, age: Int, grade: Int,d:String) {
      self.firstName = firstName
      self.lastName = lastName
      self.age = age
      self.grade = grade
      self.d=d
     
//      var Department=Department.Math.rawValue
//      print(Department)
      
   }
  

   func getFullName() -> String {
      return firstName + " " + lastName+" " +  d
       }
}
let person = Student(firstName:"wejdan", lastName:"alsh",age :22,grade :90,d: "ComputerScience")
print("Full name: " + person.getFullName())
var stu=Student(firstName:"sara", lastName:"al",age :29,grade :100,d: "ComputerScience")
print("Full name: " + stu.getFullName())




struct Point{
   var x:Int
   var y:Int
}
var number=Point(x: 2, y:2)
let p=Point(x: 2, y: 2)
print(p.x, p.y)

enum Department :String{

   case ComputerScience="ComputerScience"
   case Math="Math"
   case English="English"
   case Physics="Physics"
//   var new=Department.RawValue()
//   print(new)
//   
}
//var Department=Department.rawValue
//print(Department.self)
//let d=Department()

struct Rectangle{
   
   var width :Int
   var height :Int
}
class Size{
   
   var width1 :Int
   var height1 :Int
   init(width1: Int, height1: Int) {
      self.width1 = width1
      self.height1 = height1
   }
   
}
var re=Rectangle(width: 3, height: 3)
var si=Size(width1: 5, height1: 4)
print("Structs are value types and classes are reference types")

//extension Student{
//   func orderList(){
//      var list=["wejdan","sara","atherr"]
//      list.sort()
//      print( list)
  // }
//
//let s1 =  Student(orderList(list=["wejdan","sara","atherr"])
//list:[String]
