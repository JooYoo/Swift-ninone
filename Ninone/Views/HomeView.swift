//
//  HomeView.swift
//  Ninone
//
//  Created by Yu on 2022/2/28.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var vm:MiniAppVM
    
    // UI
    let layout = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: layout){
                    ForEach(vm.miniApps, id:\.id){ app in
                        NavigationLink{
                            app.miniAppView
                        } label: {
                            GridCard(app: app)
                        }
                        .padding(5)
                    }
                }
                .padding()
            }
            .navigationTitle("Ninone")
            .staticBg()
        }
        .navigationViewStyle(.stack)
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
