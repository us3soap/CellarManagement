//
//  UITextField+Extensions.swift
//  CellarManagement
//
//  Created by Kevin Valette on 08/12/2020.
//

import UIKit

extension UITextField {
    var intValue: Int? {
        guard let text = text else { return nil }
        let intValue = Int(text)
        return intValue
    }
    
    var doubleValue: Double? {
        guard let text = text else { return nil }
        let doubleValue = Double(text)
        return doubleValue
    }
}
