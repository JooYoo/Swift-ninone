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

struct MiniAppList {
    static let miniApps = [
        MiniApp(name: "Ro.Pa.Sci", emoji: "✌🏼", createDate: "2022-01-29",  miniAppView: AnyView(RockPaperScissorsView())),
        MiniApp(name: "Todo", emoji: "📋", createDate: "N/A", miniAppView: AnyView(TodosView())),
        MiniApp(name: "Fake Order", emoji: "📦", createDate: "N/A", miniAppView: AnyView(FakeOrderView())),
        MiniApp(name: "Weather", emoji: "🌦", createDate: "N/A", miniAppView: AnyView(WeatherView())),
    ]
}
