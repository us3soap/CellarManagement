//
//  ViewController.swift
//  CellarManagement
//
//  Created by Kevin Valette on 08/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var isOrganicSwitch: UISwitch!
    @IBOutlet weak var castleNameTextField: UITextField!
    @IBOutlet weak var castleDepartementTextField: UITextField!
    @IBOutlet weak var medalSegmented: UISegmentedControl!
    @IBOutlet weak var ratingSegmented: UISegmentedControl!
    @IBOutlet weak var commentTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseImage(_ sender: UIButton) {
        print("TODO")
    }
    
    @IBAction func save(_ sender: UIButton) {
        
        if let name = nameTextField.text,
           let castleName = castleNameTextField.text,
           let castleDepartement = castleDepartementTextField.text,
           let castleDepartementInt = Int(castleDepartement),
           let year = yearTextField.text,
           let yearInt = Int(year),
           let price = priceTextField.text,
           let priceDouble = Double(price),
           let comment = commentTextField.text {
            
            let wine = Wine(name: name, castle: Castle(name: castleName, department: castleDepartementInt), year: yearInt, isOrganic: isOrganicSwitch.isOn, price: priceDouble, urlImage: nil, grapeVarities: [], medal: nil,rating: 10.0, comment: comment)
            
            print(wine.description())
            
        }
        

    }
    
}

