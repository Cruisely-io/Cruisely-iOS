//
//  NetworkViewModel.swift
//  WellsFargo
//
//  Created by James McDougall on 3/9/23.
//

import SwiftUI

enum Header: String {
    case get = "GET"
}

enum ContentType: String {
    case contentType = "content/type"
}

class NetworkViewModel: ObservableObject {
    
    var baseURL = URL(string: "https://jsonplaceholder.typicode.com")
    @Published var posts: [Post]?
    
    init() {
        callNetwork()
    }
    
    func callNetwork() {
        var path = baseURL!.appendingPathComponent("/posts")
        
        var request = URLRequest(url: path)
        request.httpMethod = Header.get.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { [weak self] (data, _, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let data = data else { return }
            
            do {
                var posts = try? JSONDecoder().decode([Post].self, from: data)
                DispatchQueue.main.async {
                    self?.posts = posts
                }
            } catch {
                print("There was an error with the data from post \(error)")
            }
        }
        .resume()
    }
}
