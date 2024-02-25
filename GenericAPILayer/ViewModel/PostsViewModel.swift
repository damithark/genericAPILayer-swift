//
//  PostsViewModel.swift
//  GenericAPILayer
//
//  Created by Damitha Raveendra on 2024-02-26.
//

import Foundation

class PostsViewModel: ObservableObject {
    @Published var posts: [Post]
    let service = APIService()
    
    init() {
        posts = []
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
                self.posts.append(post)
            }
        }
    }
}
