//
//  MapViewActionButton.swift
//  Cruisely
//
//  Created by James McDougall on 3/5/23.
//

import SwiftUI

struct MapViewActionButton: View {
    
    @Binding var mapState: MapViewState
    @Binding var showSideMenu: Bool
    @EnvironmentObject var viewModel: LocationSearchViewModel
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                actionForState(mapState)
            }
        }, label: {
            Image(systemName: imageNameForState(mapState))
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        })
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func actionForState(_ state: MapViewState) {
        switch state {
        case .noInput:
            showSideMenu.toggle()
        case .searchingForLocation:
            mapState = .noInput
        case .locationSelected, .polylineAdded:
            viewModel.selectedCruiselyLocation = nil
            mapState = .noInput
        }
    }
    
    func imageNameForState(_ state: MapViewState) -> String {
        switch state {
        case .noInput:
            return "slider.horizontal.3"
        case .searchingForLocation, .locationSelected, .polylineAdded:
            return "arrow.backward"
        }
    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(mapState: .constant(.noInput), showSideMenu: .constant(false))
    }
}
