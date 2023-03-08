//
//  Color.swift
//  Cruisely
//
//  Created by James McDougall on 3/5/23.
//

import SwiftUI

extension Color {
    static let theme = ColorTheme()
    
}

struct ColorTheme {
    let backgroundColor = Color("BackgroundColor")
    let secondaryBackgroundColor = Color("SecondaryBackgroundColor")
    let primaryTextColor = Color("PrimaryTextColor")
    let cruiselyBlue = Color("CruiselyBlue")
}
