//
//  HomeView.swift
//  Cruisely
//
//  Created by James McDougall on 3/5/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showLocationSearchView = false
    
    var body: some View {
        ZStack(alignment: .top) {
            CruiselyMapViewRepresentable()
                .ignoresSafeArea(.all)
            
            if showLocationSearchView {
                LocationSearchView(showLocationSearchView: $showLocationSearchView)
            } else {
                LocationSearchActivationView()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            showLocationSearchView.toggle()
                        }
                    }
            }
            
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
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
