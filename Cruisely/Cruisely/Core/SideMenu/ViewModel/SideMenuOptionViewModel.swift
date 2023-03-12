//
//  SideMenuOptionViewModel.swift
//  Cruisely
//
//  Created by James McDougall on 3/12/23.
//

import Foundation

enum SideMenuOptionViewModel: Int, CaseIterable, Identifiable {
    case trips
    case wallet
    case messages
    case settings
    
    var title: String {
        switch self {
        case .trips: return "Your Trips"
        case .wallet: return "Wallet"
        case .messages: return "Messages"
        case .settings: return "Settings"
        }
    }
    
    var imageName: String {
        switch self {
        case .trips: return "list.bullet.rectangle"
        case .wallet: return "creditcard"
        case .messages: return "gear"
        case .settings: return "bubble.left"
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
