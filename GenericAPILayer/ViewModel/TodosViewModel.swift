//
//  TodosViewModel.swift
//  GenericAPILayer
//
//  Created by Damitha Raveendra on 2024-02-26.
//

import Foundation

class TodosViewModel: ObservableObject {
    
    @Published var todos: [Todo]
    let service = APIService()
    
    init() {
        todos = []
    }
    
    public func getTodos() {
        let request = Endpoint.fetchTodos().request!
        service.makeRequest(with: request, responseModel: [Todo].self) { todos, error in
            if let error = error {
                print("DEBUG PRINT: ", error)
            }
            
            for todo in todos ?? [] {
                self.todos.append(todo)
            }
        }
    }
    
}
