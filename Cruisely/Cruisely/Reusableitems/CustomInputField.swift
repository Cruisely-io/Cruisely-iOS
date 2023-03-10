//
//  CustomInputField.swift
//  Cruisely
//
//  Created by James McDougall on 3/9/23.
//

import SwiftUI

struct CustomInputField: View {
    
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            //title
            Text(title)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.footnote)
            //textfield
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .foregroundColor(.white)
            } else {
                TextField(placeholder, text: $text)
                    .foregroundColor(.white)
            }
            //divider
            Rectangle()
                .foregroundColor(Color(.init(white: 1, alpha: 0.5)))
                .frame(width: UIScreen.main.bounds.width - 32, height: 0.7)
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomInputField(text: .constant(""), title: "Email", placeholder: "name@example.com")
                .preferredColorScheme(.dark)
                
        }
    }
}
