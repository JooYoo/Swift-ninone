//
//  ContentView.swift
//  Ninone
//
//  Created by Yu on 2022/2/4.
//

import SwiftUI

struct ContentView: View {
    
    let miniApps = MiniAppList.miniApps
    
    // UI
    let layout = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: layout){
                    ForEach(miniApps, id:\.id){ app in
                        NavigationLink{
                            app.miniAppView
                        } label: {
                            VStack{
                                Text(app.name)
                            }
                        }
                    }
                    
                }
            }
            .navigationTitle("Ninone")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
