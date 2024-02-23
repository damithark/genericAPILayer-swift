//
//  Post.swift
//  GenericAPILayer
//
//  Created by Damitha Raveendra on 2024-02-21.
//

import Foundation

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
