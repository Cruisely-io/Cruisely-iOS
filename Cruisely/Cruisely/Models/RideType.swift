//
//  RideType.swift
//  Cruisely
//
//  Created by James McDougall on 3/7/23.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable {
    case cruiser
    case cruiserLux
    case cruiserBig
    
    var id: Int { return rawValue }
    
    var description: String {
        switch self {
        case .cruiser: return "Cruiser"
        case .cruiserLux: return "Cruiser Lux"
        case .cruiserBig: return "Cruiser Big"
        }
    }
    
    var imageName: String {
        switch self {
        case .cruiser: return "uber-x"
        case .cruiserLux: return "uber-black"
        case .cruiserBig: return "uber-x"
        }
    }
    
    var baseFare: Double {
        switch self {
        case .cruiser: return 5
        case .cruiserLux: return 20
        case .cruiserBig: return 10
        }
    }
    
    func computePrice(for distanceInMeters: Double) -> Double {
        let distanceInMiles = distanceInMeters / 1600
        
        switch self {
        case .cruiser: return distanceInMiles * 1.5 + baseFare
        case .cruiserLux: return distanceInMiles * 2.0 + baseFare
        case .cruiserBig: return distanceInMiles * 1.75 + baseFare
        }
    }
}
