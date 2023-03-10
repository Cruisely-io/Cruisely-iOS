//
//  Post.swift
//  WellsFargo
//
//  Created by James McDougall on 3/9/23.
//

import SwiftUI

struct Post: Codable, Identifiable {
    var userID: Int
    var id: Int
    var title: String
    var body: String
}
