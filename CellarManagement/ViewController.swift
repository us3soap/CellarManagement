//
//  ViewController.swift
//  CellarManagement
//
//  Created by Kevin Valette on 08/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var sayHelloBtn: UIButton!
    @IBOutlet weak var stateSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.stateSwitch.isOn = false
    }

    @IBAction func sayHello(_ sender: UIButton) {
        //self.view.backgroundColor = UIColor.blue
        self.helloLabel.text = "Hello \(nameTextField?.text ?? "") !"
        self.sayHelloBtn.isEnabled = false
        self.stateSwitch.isOn = false
        
    }
    
    @IBAction func changeState(_ sender: UISwitch) {
        if(self.stateSwitch.isOn){
            self.sayHelloBtn.isEnabled = true
        }
    }
}

