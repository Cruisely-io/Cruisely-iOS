//
//  MapViewActionButton.swift
//  Cruisely
//
//  Created by James McDougall on 3/5/23.
//

import SwiftUI

struct MapViewActionButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Image(systemName: "slider.horizontal.3")
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
        })
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton()
    }
}
