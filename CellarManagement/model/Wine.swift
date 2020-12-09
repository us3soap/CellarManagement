//
//  Wine.swift
//  CellarManagement
//
//  Created by Kevin Valette on 08/12/2020.
//

import Foundation

enum GrapeVarities: Int, CaseIterable {
    case GRENACHE, MOUVEDRE, SYRAH, CARIGNAN
    
    var label : String {
      switch self {
      case .GRENACHE: return "grenache"
      case .MOUVEDRE: return "mouvedre"
      case .SYRAH: return "syrah"
      case .CARIGNAN: return "carignan"
      }
    }
}

struct Wine : Hashable{
    
    enum Medal: Int, CaseIterable {
        case GOLD, SILVER, BRONZE
        
        var icon : String {
          switch self {
          case .GOLD: return "🥇"
          case .SILVER: return "🥈"
          case .BRONZE: return "🥉"
          }
        }
    }

    let name: String
    let castle: Castle
    let year: Int
    let isOrganic: Bool
    let price: Double
    let urlImage: URL?
    let grapeVarities: Set<GrapeVarities>
    let medal: Optional<Wine.Medal>
    
    var rating: Double = 10.0
    var comment: String?
    
    static var capacity: Double = 75.0
    
    var subtitle: String {
        get {
            return "\(castle.nomination) \(year)"
        }
    }
    
    func description() -> String {
        return "• \(name) - \(castle.nomination) - \(year)"
   }
}
