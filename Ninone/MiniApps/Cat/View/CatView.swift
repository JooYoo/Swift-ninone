//
//  FakeOrderView.swift
//  Ninone
//
//  Created by Yu on 2022/2/4.
//

import SwiftUI

struct CatView: View {
    @StateObject var vm = CatVM()
    
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
            .navigationViewStyle(.stack)
            .navigationBarTitle("Cat", displayMode: .inline)
            .searchable(text: $vm.userInput, placement: .navigationBarDrawer(displayMode: .always))
            .refreshable {
                vm.getBreeds()
            }
        }
    }
}

struct CatView_Previews: PreviewProvider {
    static var previews: some View {
        CatView()
    }
}
