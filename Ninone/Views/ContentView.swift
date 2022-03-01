//
//  ContentView.swift
//  Ninone
//
//  Created by Yu on 2022/2/4.
//

import SwiftUI


struct ContentView: View {
    @StateObject var vm = MiniAppVM()
    
    init() {
        // default TabView bg
        UITabBar.appearance().backgroundColor = UIColor.black.withAlphaComponent(0.1)
    }
    
    var body: some View {
        TabView{
            HomeView(vm: vm)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AboutView(vm: vm)
                .tabItem {
                    Label("About", systemImage: "info.circle")
                }
        }
        .preferredColorScheme(.dark)
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
