//
//  Cat.swift
//  Ninone
//
//  Created by Yu on 2022/3/5.
//

import Foundation
import RealmSwift

class Breed: Object, Codable  {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case temperament
        case origin
        case additonialInfo = "description"
        case image
    }
    
    @Persisted (primaryKey: true) var id : String
    @Persisted var name: String
    @Persisted var temperament: String
    @Persisted var origin: String
    @Persisted var additonialInfo: String
    @Persisted var image: CatImg?
}

class CatImg: Object, Codable {
    @Persisted var url: String?
}
