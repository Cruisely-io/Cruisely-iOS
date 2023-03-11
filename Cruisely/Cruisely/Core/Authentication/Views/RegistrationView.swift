//
//  RegistrationView.swift
//  Cruisely
//
//  Created by James McDougall on 3/9/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var fullname = ""
    @State private var email = ""
    @State private var passsword = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
        
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.left")
                        .font(.title)
                        .imageScale(.medium)
                        .padding()
                })
                
                Text("Create new account")
                    .font(.system(size: 40))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .frame(width: 250)
                
                Spacer()
                
                VStack {
                    VStack(spacing: 56) {
                        CustomInputField(text: $fullname,
                                         title: "Full Name",
                                         placeholder: "Enter your name")
                        
                        CustomInputField(text: $email,
                                         title: "Email Address",
                                         placeholder: "name@example.com")
                        
                        CustomInputField(text: $passsword,
                                         title: "Create Password",
                                         placeholder: "Enter your password",
                                         isSecureField: true)
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    Button(action: {
                        authViewModel.registerUser(withEmail: email, password: passsword, fullname: fullname)
                    }, label: {
                        HStack {
                            Text("SIGN UP")
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
                }
            }
            .foregroundColor(.white)
        }
        .navigationBarHidden(true)

    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
