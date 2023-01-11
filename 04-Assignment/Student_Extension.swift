//
//  Student_Extension.swift
//  04-Assignment
//
//  Created by Raneem AlRashoud on 18/06/1444 AH.
//

import Foundation

//age-based sorting
extension Student: Comparable {
    static func < (lhs: Student, rhs: Student) -> Bool {
        return lhs.age < rhs.age
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.age == rhs.age
    }
    
    
}
