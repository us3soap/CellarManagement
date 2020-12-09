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
    
        guard let name = nameTextField.text, !name.isEmpty else { return }
        
        guard let castleName = castleNameTextField.text, !name.isEmpty else { return }
       
        guard let castleDepartement = castleDepartementTextField.intValue else { return }
        
        guard let year = yearTextField.intValue else { return }
        
        guard let price = priceTextField.doubleValue else { return }
        
        guard let comment = commentTextField.text else { return }
                
        guard let medal = Wine.Medal.init(rawValue: medalSegmented.selectedSegmentIndex) else { return }
        print(medal)
        
        let wine = Wine(name: name, castle: Castle(name: castleName, department: castleDepartement), year: year, isOrganic: isOrganicSwitch.isOn, price: price, urlImage: nil, grapeVarities: [], medal: medal, rating: 10.0, comment: comment)
        
        print(wine.description())

    }
    
}
