//
//  SettingsView.swift
//  Cruisely
//
//  Created by James McDougall on 3/12/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            List {
                Section {
                    //User info Header
                    HStack {
                        Image("male-profile-photo-2")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 64, height: 64)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("James McDougall")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(Color.theme.primaryTextColor)
                            
                            Text("Test@gmail.com")
                                .font(.system(size: 14))
                                .foregroundColor(Color.theme.primaryTextColor)
                                .opacity(0.77)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .imageScale(.small)
                            .font(.title2)
                            .foregroundColor(.gray)
                    }
                }
                
                Section(header: Text("Favorites")) {
                    HStack {
                        Image(systemName: "chevron.right")
                            .imageScale(.medium)
                            .font(.title)
                            .foregroundColor(Color(.systemBlue))
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Home")
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundColor(Color.theme.primaryTextColor)
                            
                            Text("Add Home")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
