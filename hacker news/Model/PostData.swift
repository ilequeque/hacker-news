//
//  PostData.swift
//  hacker news
//
//  Created by Iliyas Shakhabdin on 26.03.2024.
//

import Foundation
struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
