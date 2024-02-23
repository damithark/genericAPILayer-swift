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
        VStack {
            VStack {
                /* GET Button */
                Button(action: {
                    print("GET tapped!")
                    Task { viewModel.getPosts() }
                    
                }) {
                  Text("GET")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24)
                    .padding(10)
                    .foregroundColor(.green)
                    .background(.black)
                    .cornerRadius(10)
                }
                .padding(.bottom, 10)
                
                /* POST Button */
                Button(action: {
                    print("POST tapped!")
                }) {
                  Text("POST")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24)
                    .padding(10)
                    .foregroundColor(.brown)
                    .background(.black)
                    .cornerRadius(10)
                }
                .padding(.bottom, 10)
                
                /* PUT Button */
                Button(action: {
                    print("PUT tapped!")
                }) {
                  Text("PUT")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24)
                    .padding(10)
                    .foregroundColor(.cyan)
                    .background(.black)
                    .cornerRadius(10)
                }
                .padding(.bottom, 10)
                
                /* DELETE Button */
                Button(action: {
                    print("DELETE tapped!")
                }) {
                  Text("DELETE")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24)
                    .padding(10)
                    .foregroundColor(.red)
                    .background(.black)
                    .cornerRadius(10)
                }
                .padding(.bottom, 10)
            }
            .padding(.bottom, 50)
            VStack {
                Text(viewModel.responseData)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
            }
        }
    }
}

#Preview {
    APILayerHome()
}
