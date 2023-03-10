//
//  ContentView.swift
//  WellsFargo
//
//  Created by James McDougall on 3/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = NetworkViewModel()
    
    var body: some View {
        ZStack {
            VStack {
                List(viewModel.posts ?? [Post(userID: 1, id: 2, title: "Hello", body: "Goodbye")]) { post in
                    VStack {
                        Text(post.title)
                            .font(.largeTitle)
                            .bold()
                        Text(post.body)
                            .font(.subheadline)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
