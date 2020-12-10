//
//  WineController.swift
//  CellarManagement
//
//  Created by Kevin Valette on 10/12/2020.
//

import UIKit

class WineController: UIViewController {
    
    
    @IBOutlet weak var wineName: UILabel!
    var currentWine: Wine? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wineName.text = currentWine?.name
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
