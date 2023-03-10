//
//  CruiselyApp.swift
//  Cruisely
//
//  Created by James McDougall on 3/4/23.
//

import SwiftUI

@main
struct CruiselyApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            LogInView()
                .environmentObject(locationViewModel)
        }
    }
}
