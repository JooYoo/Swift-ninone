//
//  FakeOrderView.swift
//  Ninone
//
//  Created by Yu on 2022/2/4.
//

import SwiftUI

struct CatView: View {
    @StateObject var vm = CatVM()
    @StateObject var infoVm = AppInfoVM()
    @State var showingSheet = false
    
    var body: some View {
        
        ScrollViewReader{ proxy in
            List{
                ForEach(vm.searchRes, id:\.id){ breed in
                    NavigationLink{
                        CatDetailView(breed: breed)
                    } label: {
                        ListRow(breed: breed)
                    }
                }
                .onAppear{
                    // avoid the gap between searchbar and list when default
                    proxy.scrollTo("amau")
                }
            }
            .searchable(text: $vm.userInput, placement: .navigationBarDrawer(displayMode: .always))
            .refreshable {
                vm.getBreeds()
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarTitle("Cat", displayMode: .inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button{
                    showingSheet = true
                }label: {
                    Label("About", systemImage: "info.circle")
                        .foregroundColor(.white)
                }
            }
        }
        .sheet(isPresented: $showingSheet){
            AppInfoSheet(info: infoVm.catInfo) {
                LinearGradient(colors: [Color(red: 0.00, green: 0.42, blue: 0.46), Color(red: 0.22, green: 0.93, blue: 0.73)], startPoint: .topLeading, endPoint: .bottomTrailing)
            }
        }
    }
}

struct CatView_Previews: PreviewProvider {
    static var previews: some View {
        CatView()
    }
}
