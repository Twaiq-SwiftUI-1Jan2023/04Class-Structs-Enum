//
//  main.swift
//  04-Assignment
//
//  Created by Raneem AlRashoud on 18/06/1444 AH.
//

import Foundation


//📍PART#1

//5️⃣ Create an instance of the Student class in the main.swift file and set its properties with values of your choice.
let studentInstance1 = Student(firstName: "Reem", lastName: "Mohammed", age: 22, department: .Math)

//6️⃣ Call the getFullName() method on the instance and print the result to the console.
print(studentInstance1.getFullName())

//8️⃣ Create an instance of Point struct and set the values of x and y.
let pointInstance = Point(x: 10, y: 50)

//9️⃣ Print the values of x and y.
print("x = \(pointInstance.x), y = \(pointInstance.y)")



//📍PART#2

//3️⃣ create an instance of the Student class and set its department to "Computer Science".
let studentInstance2 = Student(firstName: "Raneem", lastName: "Mohammed", age: 22, department: .computerScience)

//4️⃣ Print the value of the department property to the console.
print(studentInstance2.department)




//📍PART#3

//3️⃣ Create instances of Rectangle and Size

//Rectangle
var rec1 = Rectangle(width: 5, height: 10)
print(rec1.width)



//Size
var size1 = Size(width: 20, height: 40)
print(size1.width)


//4️⃣ Compare the instances and find the difference between structs and class in terms of how they are created and stored in memory.

//Rectangle
var rec2 = rec1
rec2.width = 3
rec2.height = 2
print(rec2.width)


//Size
var size2 = size1
size2.width = 6
size2.height = 10
print(size2.width)

//Conclusion:
print("""
      * Conclusion: \n
      Struct:
      \n
      1. Copy entire data (pass by value),\n
      2. Using stack in allocation \n
      Class:
      \n
      1. Copy the reference (pass by reference)
      2. Using heap in allocation
      """)



//📍PART#4

//2️⃣ Create a List of Student object, add some students
var students: [Student] = [
    Student(firstName: "Asma", lastName: "Mohammed", age: 40, department: .computerScience),
    Student(firstName: "Abdullah", lastName: "Rashd", age: 30, department: .Physics),
    Student(firstName: "Aziz", lastName: "Ahmad", age: 18, department: .English),
    Student(firstName: "Reem", lastName: "Mohammed", age: 25, department: .Math)]

//3️⃣ Sort the list using sort()
students.sort()

//4️⃣ Print the sorted list of students.
for student in students {
    print(student.firstName + " " + student.lastName)
}
