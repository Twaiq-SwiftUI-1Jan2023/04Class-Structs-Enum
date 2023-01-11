
//1.Define a new class called Student with the following properties: firstName, lastName, age, and grade.
class student{

     var firstName:String
     var lastName:String
     var age:Int
     var grade:Int
     var department: Department
// 2.Define a constructor for the class that takes in the student's firstName, lastName, and age as parameters and assigns them to the corresponding properties + Upate constructor with Department
     init(firstName: String, lastName: String, age: Int, grade: Int,department:Department) {
         self.firstName = firstName
         self.lastName = lastName
         self.age = age
         self.grade = grade
         self.department = department
     }
// 3.Define a method called getFullName() that returns the student's full name (concatenation of firstName and lastName).
     func getFullName()->(String , String){
         return (firstName , lastName)
     }

 }
// Create a struct called 'Point' with two properties 'x' and 'y' of int data type and define a constructor which assigns values of x and y properties.
 struct Point {
     var x: Int
     var y: Int

     init(x: Int, y: Int) {
         self.x = x
         self.y = y
     }
 }
 // Create an instance of the Student class in the main.swift file and set its properties with values of your choice.
// Update instance set its department to "Computer Science
let student1 = student(firstName: "Fatma", lastName: "Allharbi", age: 25, grade: 99 ,department:Department.ComputerScience)
print(student1.getFullName()) //Call the getFullName() method on the instance and print the result
// Create an instance of Point struct and set the values of x and y.
 let pointZ = Point(x: 2, y: 3)
 print("X = \(pointZ.x) Y = \(pointZ.y)") // Print the values of x and y.
// Part 2: Enums
// Define an enumeration called "Department" with the following members: "Computer Science", "Math", "English", and "Physics".
 enum Department: String {
     case ComputerScience = "Computer Scienc"
     case Math = "Math"
     case English = "English"
     case Physics = "Physics"
    }

 print(student1.department) // Print the value of the department property
// Part 3: Comparison
// Create another struct called "Rectangle" with two properties width and height.
struct Rectangle{
    var width:Double
    var height:Double
    }
// Create a new class called Size with two properties width and height.
class Size{
    var width:Double
    var height:Double
    //constructor
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}
//Create instances of Rectangle and Size
let Rectangle1 = Rectangle(width: 10, height: 20) // Create an instance of the  Rectangle Struct
let size1 = Size(width: 10, height: 20) // Create an instance of the  Size Struct
 // Compare the instances and find the difference between structs and class in terms of how they are created and stored in memory.
/* 1.Structures are value types (pass by Value).
    classes are reference types (pass by reference).
   2.Structures do not support inheritance (essentially a consequence of the first point)
   3.Whenever you assign a value type variable (Rectangle1) to a new variable (Rectangle2), a new copy of the variable is given to the new variable (Rectangle2). Therefore, any changes made to any of the variables inside them will not affect the other variables.
 4.Whenever you assign a reference type variable (size1) to a new variable (size2 or size3), a new copy of the variable is given to the new variable (size2 or size3). Therefore, any changes made to any of the variables inside them will affect the other variables
 5. Struct Using Stack in allocation
 6. Class using Using heap in allocation
 */

///
// Bonus
/*Create an extension of Student class that conforms to Comparable protocol. Create a List of Student object, add some students
and sort the list using sort() Print the sorted list of students.*/
let studentList: Set = ["Fatma", "Raneem", "Ahmed", "Yazeed","Bandar", "Ahmed"]
let sortStudentList = studentList.sorted()
print(sortStudentList)
