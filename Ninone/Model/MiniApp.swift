//
//  MiniAppModel.swift
//  Ninone
//
//  Created by Yu on 2022/2/4.
//

import Foundation
import SwiftUI

struct MiniApp: Identifiable {
    let id:UUID = UUID()
    let name: String
    let emoji: String
    let createDate: String
    let miniAppView: AnyView
}
