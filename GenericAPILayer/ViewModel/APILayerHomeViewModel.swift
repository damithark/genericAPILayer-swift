//
//  APILayerHomeViewModel.swift
//  GenericAPILayer
//
//  Created by Damitha Raveendra on 2024-02-22.
//

import Foundation

class APILayerHomeViewModel: ObservableObject {
    
    @Published var responseData: String
    let service = APIService()
    
    init() {
        responseData = "Empty"
    }
    
    private func getPostForIndex() {
        
    }
    
    public func getPosts() {
        print("getPosts Called")
        let request = Endpoint.fetchPosts().request!
        print("Request created")
        service.makeRequest(with: request, responseModel: [Post].self) { posts, error in
            print("Request created")
            if let error = error {
                print("DEBUG PRINT: ", error)
            }
            print("Posts: ", posts ?? [])
            for post in posts ?? [] {
                print(post.title)
            }
            
//            posts?.forEach({
//                print(posts)
//                self.responseData += $0.title
//            })
        }
    }
    
}
