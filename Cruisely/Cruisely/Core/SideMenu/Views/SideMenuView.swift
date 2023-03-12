//
//  SideMenuView.swift
//  Cruisely
//
//  Created by James McDougall on 3/12/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                //Header View
                VStack(alignment: .leading, spacing: 32) {
                    //User Info
                    HStack {
                        Image("male-profile-photo-2")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 64, height: 64)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("James McDougall")
                                .font(.system(size: 16, weight: .semibold))
                            
                            Text("Test@gmail.com")
                                .font(.system(size: 14))
                                .accentColor(.black)
                                .opacity(0.77)
                        }
                    }
                    
                    //Become a driver
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Do more with your account")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        HStack {
                            Image(systemName: "dollarsign.square")
                                .font(.title2)
                                .imageScale(.medium)
                            
                            Text("Make Money Driving")
                                .font(.system(size: 16, weight: .semibold))
                                .padding(6)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                
                Rectangle()
                    .frame(width: 246, height: 0.75)
                    .opacity(0.7)
                    .foregroundColor(Color(.separator))
                    .shadow(color: Color.black.opacity(0.7), radius: 4)
                
                //OptionList
                VStack {
                    
                    ForEach(SideMenuOptionViewModel.allCases) { viewModel in
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: {
                                /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                            })
                    }
                }
                Spacer()
            }
            .padding(.top, 32)
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
