//
//  RideType.swift
//  Cruisely
//
//  Created by James McDougall on 3/7/23.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable {
    case cruiser
    case cruiserPet
    case cruiserLux
    case cruiserBig
    case ladyCruiser
    case ladyCruiserPet
    case ladyCruiserLux
    case ladyCruiserBig
    
    
    
    var id: Int { return rawValue }
    
    var description: String {
        switch self {
        case .cruiser: return "Cruiser"
        case .cruiserPet: return "Cruiser Pet"
        case .cruiserLux: return "Cruiser Lux"
        case .cruiserBig: return "Cruiser Big"
            
        case .ladyCruiser: return "Lady Cruiser"
        case .ladyCruiserPet: return "Lady Cruiser Pet"
        case .ladyCruiserLux: return "Lady Cruiser Lux"
        case .ladyCruiserBig: return "Lady Cruiser Big"
        }
    }
    
    var imageName: String {
        switch self {
        case .cruiser: return "uber-x"
        case .cruiserPet: return "uber-x"
        case .cruiserLux: return "uber-black"
        case .cruiserBig: return "uber-x"
        case .ladyCruiser: return "uber-x"
        case .ladyCruiserPet: return "uber-x"
        case .ladyCruiserLux: return "uber-black"
        case .ladyCruiserBig: return "uber-x"
        }
    }
    
    var baseFare: Double {
        switch self {
        case .cruiser: return 5
        case .cruiserPet: return 5
        case .cruiserLux: return 20
        case .cruiserBig: return 10
        case .ladyCruiser: return 5
        case .ladyCruiserPet: return 5
        case .ladyCruiserLux: return 20
        case .ladyCruiserBig: return 10
        }
    }
    
    func computePrice(for distanceInMeters: Double) -> Double {
        let distanceInMiles = distanceInMeters / 1600
        
        switch self {
        case .cruiser: return distanceInMiles * 2.15 + baseFare
        case .cruiserPet: return distanceInMiles * 2.40 + baseFare
        case .cruiserLux: return distanceInMiles * 3.0 + baseFare
        case .cruiserBig: return distanceInMiles * 2.50 + baseFare
        case .ladyCruiser: return distanceInMiles * 2.15 + baseFare
        case .ladyCruiserPet: return distanceInMiles * 2.40 + baseFare
        case .ladyCruiserLux: return distanceInMiles * 3.0 + baseFare
        case .ladyCruiserBig: return distanceInMiles * 2.50 + baseFare
        }
    }
}
