//
//  HomeView.swift
//  Cruisely
//
//  Created by James McDougall on 3/5/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack(alignment: .top) {
            CruiselyMapViewRepresentable()
                .ignoresSafeArea()
            LocationSearchActivationView()
                .padding(.top, 72)
            MapViewActionButton()
                .padding(.leading)
                .padding(.top, 4)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
