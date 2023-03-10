//
//  LogInView.swift
//  Cruisely
//
//  Created by James McDougall on 3/9/23.
//

import SwiftUI

struct LogInView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                
                
                VStack {
                    Spacer()
                    //image and title
                    VStack(spacing: -16) {
                        Image("uber-app-icon")
                            .resizable()
                            .frame(width: 200, height: 200)
                        
                        Text("CRUISELY")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    
                    //input fields
                    VStack {
                        VStack(alignment: .leading, spacing: 32) {
                                CustomInputField(text: $email, title: "Email Address", placeholder: "name@example.com")
                                
                            CustomInputField(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                            }
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                        })
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        
                    }
                    .padding(.horizontal)
                    .padding(.top, 12)
                    
                    
                    Spacer()
                    
                    VStack {
                        HStack(spacing: 24) {
                            Rectangle()
                                .frame(width: 76, height: 1)
                                .foregroundColor(.white)
                                .opacity(0.5)
                            
                            Text("Sign in with social")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            
                            Rectangle()
                                .frame(width: 76, height: 1)
                                .foregroundColor(.white)
                                .opacity(0.5)
                        }
                        
                        HStack(spacing: 24) {
                            Button(action: {
                                
                            }, label: {
                                Image("facebook-sign-in-icon")
                                    .resizable()
                                    .frame(width: 44, height: 44)
                            })
                            
                            Button(action: {
                                
                            }, label: {
                                Image("google-sign-in-icon")
                                    .resizable()
                                    .frame(width: 44, height: 44)
                            })
                        }
                    }
                    .padding(.vertical)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Text("SIGN IN")
                                .foregroundColor(.black)
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.black)
                                .font(.headline)
                        }
                        .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    })
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: RegistrationView()
                            .navigationBarBackButtonHidden(true),
                        label: {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        })
                        .foregroundColor(.white)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
