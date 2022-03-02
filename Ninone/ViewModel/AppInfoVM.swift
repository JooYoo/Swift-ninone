//
//  RpsInfoVM.swift
//  Ninone
//
//  Created by Yu on 2022/3/2.
//

import Foundation

class AppInfoVM: ObservableObject {
    
    @Published var rpsInfo = MiniAppInfo(
        icon: "✌🏼",
        name: "R.P.S",
        description: "Display rock, paper, and scissors randomly. The user gets a prompting, either should win or lose. Then the user needs to make a choice. The score will be calculated. Four rounds one game, popup a total score.",
        keywords: ["Button", "List", "NavigationView"]
    )
    @Published var weatherInfo = MiniAppInfo(
        icon: "⛅",
        name: "Weather",
        description: "Searching the current weather conditions for different cities. Internet connection is required.",
        keywords: ["NavigationView", "Text", "Image", "ProgressView", "Task", "searchable", "Codable", "ObservableObject", "@Published", "@StateObject", "URL", "URLSession", "JSONDeconder", "DispatchQueue", "async", "await", "Bundle"]
    )
    @Published var todosInfo = MiniAppInfo(
        icon: "📋",
        name: "Todos",
        description: "A simple Todo list. Users can add, check, remove todo. The data will be saved locally.",
        keywords: ["List", "Section", "ForEach", "TextField", "Text",  "onTapGesture", "swipeActions", "onSubmit", "Realm", "Object", "Identifiable", "@Persisted", "ObjectId", "ObservableObject", "@Published", "@StateObject"]
    )
    @Published var pokedexInfo = MiniAppInfo(
        icon: "🦋",
        name: "Pokédex",
        description: "discription: Users can browse more than 100 Pokemons in total. Check some of the Pokemon infomation in the app. Once the app is loaded, the data will be saved in local.",
        keywords: ["NavigationView", "List", "AsyncImage", "Codable", "ObservableObject", "@Published", "@StateObject", "URL", "URLSession", "JSONDecoder", "DispatchQueue"]
    )
    
}
