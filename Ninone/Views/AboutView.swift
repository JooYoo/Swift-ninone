//
//  AboutView.swift
//  Ninone
//
//  Created by Yu on 2022/2/28.
//

import SwiftUI

struct AboutView: View {
    @ObservedObject var vm:MiniAppVM
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text("About viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout viewAbout view")
                    .padding()
            }
            .navigationTitle("About")
            .staticBg()
        }
        .navigationViewStyle(.stack)
    }
}

//struct AboutView_Previews: PreviewProvider {
//    static var previews: some View {
//        AboutView()
//    }
//}
