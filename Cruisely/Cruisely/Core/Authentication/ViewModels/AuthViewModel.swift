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
}
