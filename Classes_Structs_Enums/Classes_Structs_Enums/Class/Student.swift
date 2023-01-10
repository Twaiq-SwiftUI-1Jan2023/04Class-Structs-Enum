//
//  Student.swift
//  Classes_Structs_Enums
//
//  Created by Amer Alyusuf on 10/01/2023.
//

import Foundation

class Student {
    var firstName: String
    var lastName: String
    var age: Int
    var grade: Int = 1
    var department: Department
    
    init(firstName: String, lastName: String, age: Int, department: Department) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.department = department
    }
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
}
