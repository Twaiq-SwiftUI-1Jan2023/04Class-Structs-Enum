//
//  Student_Class.swift
//  04-Assignment
//
//  Created by Raneem AlRashoud on 18/06/1444 AH.
//

import Foundation

class Student {
    var firstName: String
    var lastName: String
    var age: Int
    var grade: Int = 0
    var department: Department
    
    
    //as the constructor doesn't define the garde, then we need to give it an initial value above
    init(firstName: String, lastName: String, age: Int, department: Department) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.department = department
    }
    
    //Define a method called getFullName() that returns the student's full name (concatenation of firstName and lastName).
    func getFullName() -> String {
        return firstName + " " + lastName
    }
}
