//
//  Castle.swift
//  CellarManagement
//
//  Created by Kevin Valette on 08/12/2020.
//

import Foundation

struct Castle : Hashable{
    let name: String
    let department: Int
    
    // GET-only computed property
    var nomination: String {
        get {
            return "\(name) (\(department))"
        }
    }
}
