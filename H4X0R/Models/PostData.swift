//
//  PostData.swift
//  H4X0R
//
//  Created by Nguyễn Thanh Minh on 21/07/2024.
//

import Foundation
struct Result: Decodable{
    let hits: [Posts]
}
struct Posts: Decodable,Identifiable{
    var id: String{
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID: String
}
