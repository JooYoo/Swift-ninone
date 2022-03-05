//
//  MiniAppVM.swift
//  Ninone
//
//  Created by Yu on 2022/2/28.
//

import Foundation
import SwiftUI

class MiniAppVM: ObservableObject {
    
    @Published var miniApps = [
        MiniApp(
            name: "R.P.S.",
            emoji: "✌🏼",
            createDate: "2022-01-29",
            shortDesc: "Playing game with A.I. Train the brain's reaction speed. Rock, paper, or scissors.",
            themeColor: Color.pink,
            miniAppView: AnyView(RockPaperScissorsView())
        ),
        MiniApp(
            name: "Todos",
            emoji: "📋",
            createDate: "2022-02-15",
            shortDesc: "A simple Todo list. Users can add, check, remove todo. The todos will be saved locally.",
            themeColor: Color.teal,
            miniAppView: AnyView(TodosView())
        ),
        MiniApp(
            name: "Pokédex",
            emoji: "🦋",
            createDate: "2022-02-25",
            shortDesc: "There are more 100 Pokemons in total. Check some of the Pokemon infomation in the app. Once the app is loaded, the data will be saved in local.",
            themeColor: Color.green,
            miniAppView: AnyView(CatView())
        ),
        MiniApp(
            name: "Weather",
            emoji: "🌥",
            createDate: "2022-02-11",
            shortDesc: "Users can search for weather conditions in different areas. The app covers most of the big cities in the world.",
            themeColor: Color.blue,
            miniAppView: AnyView(WeatherView())
        ),
    ]
    

}

