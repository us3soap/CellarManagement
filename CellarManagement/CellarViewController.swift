//
//  CellarViewController.swift
//  CellarManagement
//
//  Created by Kevin Valette on 09/12/2020.
//

import UIKit

class CellarViewController: UIViewController {

    @IBOutlet weak var winesTableView: UITableView!
    
    let cellar = Cellar(initialWines: [
        Wine(name: "Château neuf du pape", castle: Castle(name: "Cellier des princes", department: 84), year: 2018, isOrganic: false, price: 18.50, urlImage: URL(fileURLWithPath: "https://www.cellierdesprinces.fr/image/millesime/221/gigondas-cellier-des-princes-bouteille-ecomliste.png"), grapeVarities: [GrapeVarities.GRENACHE, GrapeVarities.MOUVEDRE, GrapeVarities.SYRAH], medal: Wine.Medal.GOLD, comment: nil),
        Wine(name: "Les Darons", castle: Castle(name: "BY JEFF CARREL", department: 66), year: 2017, isOrganic: false, price: 8.60, urlImage: URL(fileURLWithPath: "https://www.jeffcarrel.com/templates/yootheme/cache/LES-DARONS-5c797c66.jpeg"), grapeVarities: [GrapeVarities.GRENACHE, GrapeVarities.CARIGNAN, GrapeVarities.SYRAH], medal: nil, comment: nil)
    ]);
    override func viewDidLoad() {
        super.viewDidLoad()
        
        winesTableView.dataSource = self
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

extension CellarViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellar.wines.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "wineCell", for: indexPath)
        
        let wine: Wine = cellar.wines[cellar.wines.index(cellar.wines.startIndex, offsetBy: indexPath.row)];
        
        cell.textLabel?.text = wine.name
        cell.detailTextLabel?.text = wine.subtitle
        
        return cell
    }
    
}
