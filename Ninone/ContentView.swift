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
                                .overlay(
                                    Rectangle()
                                        .frame(width: nil, height: 1, alignment:.top)
                                        .foregroundColor(Color.white.opacity(0.5)),
                                    alignment: .top
                                )
                                
                                
                            }
                            .background(
                                Color(red: 0.16, green: 0.15, blue: 0.19)
                                    .opacity(0.6)
                                    .blur(radius: 80)
                            )
                            //  .background(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.white.opacity(0.5))
                            )
                        }
                        .padding(5)
                    }
                }
                .padding()
            }
            .navigationTitle("Ninone")
            .preferredColorScheme(.dark)
            .background(
                Image("bg")
                    .resizable()
                    .blur(radius: 1)
                    .scaledToFill()
                    .ignoresSafeArea()
            )
        }
        .accentColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
