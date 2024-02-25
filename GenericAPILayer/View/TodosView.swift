//
//  TodosView.swift
//  GenericAPILayer
//
//  Created by Damitha Raveendra on 2024-02-26.
//

import SwiftUI

struct TodosView: View {
    @StateObject var viewModel = TodosViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(viewModel.todos, id: \.id) { todo in
                    TodosRow(todo: todo)
                }
                .onAppear {
                    if viewModel.todos.isEmpty {
                        viewModel.getTodos()
                    }
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
    TodosView()
}

struct TodosRow: View {
    var todo: Todo

    var body: some View {
        Text("\(todo.id). \(todo.title)")
    }
}
