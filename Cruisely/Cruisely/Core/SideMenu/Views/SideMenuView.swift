//
//  SideMenuView.swift
//  Cruisely
//
//  Created by James McDougall on 3/12/23.
//

import SwiftUI

struct SideMenuView: View {
    
    private let user: User
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
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
                        Text(user.fullname)
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundColor(Color.theme.primaryTextColor)
                        
                        Text(user.email)
                            .font(.system(size: 14))
                            .foregroundColor(Color.theme.primaryTextColor)
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
            VStack(spacing: 40) {
                //Trips
                NavigationLink(
                    destination: TripsView(),
                    label: {
                        HStack(spacing: 16) {
                            Image(systemName: "list.bullet.rectangle")
                                .font(.title)
                                .imageScale(.medium)
                            
                            Text("My Trips")
                                .font(.system(size: 16, weight: .semibold))
                            
                            Spacer()
                        }
                    })
                    .padding(.leading, 16)
                
                //Wallet
                NavigationLink(
                    destination: WalletView(),
                    label: {
                        HStack(spacing: 16) {
                            Image(systemName: "creditcard")
                                .font(.title)
                                .imageScale(.medium)
                            
                            Text("Wallet")
                                .font(.system(size: 16, weight: .semibold))
                            
                            Spacer()
                        }
                    })
                    .padding(.leading, 16)
                
                //Messages
                NavigationLink(
                    destination: MessagesView(),
                    label: {
                        HStack(spacing: 16) {
                            Image(systemName: "bubble.left")
                                .font(.title)
                                .imageScale(.medium)
                            
                            Text("Messages")
                                .font(.system(size: 16, weight: .semibold))
                            
                            Spacer()
                        }
                    })
                    .padding(.leading, 16)
                
                //Settings
                NavigationLink(
                    destination: SettingsView(),
                    label: {
                        HStack(spacing: 16) {
                            Image(systemName: "gear")
                                .font(.title)
                                .imageScale(.medium)
                            
                            Text("Settings")
                                .font(.system(size: 16, weight: .semibold))
                            
                            Spacer()
                        }
                    })
                    .padding(.leading, 16)
            }
            .padding(.top, 0)
            .foregroundColor(Color.theme.primaryTextColor)
            
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        let johnDoe = User(uid: "123456", fullname: "John Doe", email: "johndoe@gmail.com")
        SideMenuView(user: johnDoe)
            .preferredColorScheme(.dark)
    }
}
