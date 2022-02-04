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
    let miniAppView: AnyView
}

struct MiniAppList {
    static let miniApps = [
        MiniApp(name: "Todo", miniAppView: AnyView(TodosView())),
        MiniApp(name: "Weather", miniAppView: AnyView(WeatherView())),
        MiniApp(name: "Fake Order", miniAppView: AnyView(FakeOrderView())),
    ]
}
