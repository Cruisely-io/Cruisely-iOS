//
//  SideMenuOptionView.swift
//  Cruisely
//
//  Created by James McDougall on 3/12/23.
//

import SwiftUI

struct SideMenuOptionView: View {
    let sideMenuOptionViewModel: SideMenuOptionViewModel
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: sideMenuOptionViewModel.imageName)
                .font(.title)
                .imageScale(.medium)
            
            Text(sideMenuOptionViewModel.title)
                .font(.system(size: 16, weight: .semibold))
            
            Spacer()
        }
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(sideMenuOptionViewModel: .trips)
    }
}
