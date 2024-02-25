//
//  APILayerHome.swift
//  GenericAPILayer
//
//  Created by Damitha Raveendra on 2024-02-22.
//

import SwiftUI

struct APILayerHome: View {
    
    @StateObject var viewModel = APILayerHomeViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(viewModel.posts, id: \.id) { post in
                    PostRow(post: post)
                }
                .onAppear {
                    Task { viewModel.getPosts() }
                }
                NavigationLink(destination: PostsView(), label: 
                                {
                                  Text("Next")
                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24)
                                    .padding(10)
                                    .foregroundColor(.green)
                                    .background(.black)
                                    .cornerRadius(10)
                                })
            }
            .navigationTitle("Todos")
        }
    }
}

#Preview {
    APILayerHome()
}

struct PostRow: View {
    var post: Post

    var body: some View {
        Text("\(post.id). \(post.title)")
    }
}
