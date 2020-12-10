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
    @IBOutlet weak var grapeVaritiesTableView: UITableView!
    
    var currentCellar : Cellar?
    
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
        
        grapeVaritiesTableView.dataSource = self
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
        
        currentCellar?.add( Wine(name: name, castle: Castle(name: castleName, department: castleDepartement), year: year, isOrganic: isOrganicSwitch.isOn, price: price, urlImage: nil, grapeVarities: [], medal: Wine.Medal.init(rawValue: medalSegmented.selectedSegmentIndex), rating: 10.0, comment: comment))
        
        print(currentCellar?.wines.count ?? "Empty")
        
        dismiss(animated: true, completion: nil)
    
    }
    
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GrapeVarities.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "grapeVarityAddCell", for: indexPath)
            
        cell.textLabel?.text = GrapeVarities.init(rawValue: indexPath.row)?.label
        
        return cell
    }
    
}
