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
        configureUI()
    }
    
    func configureUI(){
        let allCases = Wine.Medal.allCases
        medalSegmented.removeAllSegments()
        for medal in allCases{
            medalSegmented.insertSegment(withTitle: medal.icon, at: medalSegmented.numberOfSegments, animated: true)
        }        
    }

    @IBAction func chooseImage(_ sender: UIButton) {
        print("TODO")
    }
    
    @IBAction func save(_ sender: UIButton) {
    
        guard let name = nameTextField.text,
              !name.isEmpty,
              let castleName = castleNameTextField.text,
              !name.isEmpty,
              let castleDepartement = castleDepartementTextField.intValue,
              let year = yearTextField.intValue,
              let price = priceTextField.doubleValue,
              let comment = commentTextField.text
        else { return }
        
        
        let wine = Wine(name: name, castle: Castle(name: castleName, department: castleDepartement), year: year, isOrganic: isOrganicSwitch.isOn, price: price, urlImage: nil, grapeVarities: [], medal: Wine.Medal.init(rawValue: medalSegmented.selectedSegmentIndex), rating: 10.0, comment: comment)
        
        print(wine.description())

    }
    
}
