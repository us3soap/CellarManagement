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
    
        guard let name = nameTextField.text, !name.isEmpty else { return }
        
        guard let castleName = castleNameTextField.text, !name.isEmpty else { return }
       
        guard let castleDepartementString = castleDepartementTextField.text, let castleDepartement = Int( castleDepartementString) else { return }
        
        guard let yearString = yearTextField.text, let year = Int(yearString) else { return }
        
        guard let priceString = priceTextField.text, let price = Double(priceString) else { return }
        
        guard let comment = commentTextField.text else { return }
        
        let wine = Wine(name: name, castle: Castle(name: castleName, department: castleDepartement), year: year, isOrganic: isOrganicSwitch.isOn, price: price, urlImage: nil, grapeVarities: [], medal: nil,rating: 10.0, comment: comment)
        
        print(wine.description())

    }
    
}

