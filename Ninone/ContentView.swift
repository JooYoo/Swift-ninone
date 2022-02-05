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
            ZStack{
                // background
                Color(.black)
                    .ignoresSafeArea()
                
                ScrollView{
                    LazyVGrid(columns: layout){
                        ForEach(miniApps, id:\.id){ app in
                            NavigationLink{
                                app.miniAppView
                            } label: {
                                // card
                                VStack{
                                    Text(app.emoji)
                                        .font(.system(size: 60))
                                        .padding(.vertical)
                                    
                                    VStack{
                                        Text(app.name)
                                            .font(.headline)
                                            .foregroundColor(.white)
                                        Text(app.createDate)
                                            .font(.caption)
                                            .foregroundColor(.white.opacity(0.8))
                                    }
                                    .padding(.vertical)
                                    .frame(maxWidth: .infinity)
                                    .background(.thickMaterial)
                                }
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray.opacity(0.5))
                                )
                            }
                            .padding(5)
                        }
                    }
                    .padding()
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
