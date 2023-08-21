//
//  PostData.swift
//  H4XER N3VV$
//
//  Created by Михаил Кузнецов on 07.07.2023.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable {
    var id : String {
        return objectID
    }
    let objectID : String
    let title : String
    let points : Int
    let url : String?
}
