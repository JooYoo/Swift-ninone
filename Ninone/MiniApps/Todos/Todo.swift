//
//  Todo.swift
//  Ninone
//
//  Created by Yu on 2022/3/4.
//

import Foundation
import RealmSwift

class Todo: Object, Identifiable {
    @Persisted (primaryKey: true) var id: ObjectId
    @Persisted var txt: String = ""
    @Persisted var isDone: Bool = false
}
