//
//  Student_Extension.swift
//  Classes_Structs_Enums
//
//  Created by Amer Alyusuf on 10/01/2023.
//

import Foundation

extension Student: Comparable {
    static func < (lhs: Student, rhs: Student) -> Bool {
        return lhs.firstName < rhs.firstName
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.firstName == rhs.firstName
    }
    
    
}
