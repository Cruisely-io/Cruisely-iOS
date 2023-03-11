//
//  AuthViewModel.swift
//  Cruisely
//
//  Created by James McDougall on 3/10/23.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth


class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func registerUser(withEmail email: String, password: String, fullname: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to sign up with error \(error.localizedDescription)")
                return
            }
            
            print("DEBUG: Register user successfully: User id \(result?.user.uid)")
        }
    }
}
