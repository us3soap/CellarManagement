//
//  Cellar.swift
//  CellarManagement
//
//  Created by Kevin Valette on 08/12/2020.
//

import Foundation

class Cellar {
    
    var wines: Set<Wine>
    
    init(initialWines: Set<Wine> = []){
        self.wines = initialWines
    }
        
            //ext   int
    func add(_ wine: Wine){
        let result = wines.insert(wine)
        
        if result.inserted{
            print("➕ " + wine.name + " is added");
            notify()
        }
    }
    
    func remove(_ wine: Wine) {
        if let wineRemoved = wines.remove(wine) {
            print("🗑 " + wineRemoved.name + " is removed");
            notify()
        }
    }
    
    func notify() {
        let notifCenter = NotificationCenter.default
        notifCenter.post(name: Notification.Name(rawValue: "CellarUpdated"), object: self)
    }
    
    func showWines(){
        print("👁 Display Cellar")
        if !(wines.isEmpty){
            
            for wine in wines {
                if let constant = wine.medal {
                    print("\(wine.description()) [\(constant.icon)]")
                } else {
                    print(wine.description())
                }
            }
            
        }
    }
    
    // Closure based
    func sortedWines() -> [Wine] {
        return wines.sorted { (w1, w2) -> Bool in
            return w1.name < w2.name
        }
    }
    
}
