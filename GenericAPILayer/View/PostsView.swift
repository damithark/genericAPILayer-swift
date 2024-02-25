//
//  PostsView.swift
//  GenericAPILayer
//
//  Created by Damitha Raveendra on 2024-02-26.
//

import SwiftUI

struct PostsView: View {
    @StateObject var viewModel = PostsViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(viewModel.posts, id: \.id) { post in
                    PostRow(post: post)
                }
                .onAppear {
                    viewModel.getPosts()
                }
            }
            .navigationTitle("Posts")
        }
    }
}

#Preview {
    PostsView()
}

struct PostRow: View {
    var post: Post

    var body: some View {
        Text("\(post.id). \(post.title)")
    }
}
