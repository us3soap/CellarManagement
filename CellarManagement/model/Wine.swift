//
//  Wine.swift
//  CellarManagement
//
//  Created by Kevin Valette on 08/12/2020.
//

import Foundation

enum GrapeVarities {
    case grenache, mouvedre, syrah, carignan
}

enum Medal {
    case GOLD, SILVER, BRONZE
    
    var icon : String {
      switch self {
      case .GOLD: return "🥇"
      case .SILVER: return "🥈"
      case .BRONZE: return "🥉"
      }
    }
}


struct Wine : Hashable{

    let name: String
    let castle: Castle
    let year: Int
    let isOrganic: Bool
    let price: Double
    let urlImage: URL?
    let grapeVarities: Set<GrapeVarities>
    let medal: Optional<Medal>
    
    var rating: Double = 10.0
    var comment: String?
    
    static var capacity: Double = 75.0
    
    func description() -> String {
        return "• \(name) - \(castle.nomination) - \(year)"
   }
}
