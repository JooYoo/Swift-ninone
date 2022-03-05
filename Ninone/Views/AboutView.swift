//
//  AboutView.swift
//  Ninone
//
//  Created by Yu on 2022/2/28.
//

import SwiftUI

struct AboutView: View {
    @StateObject var vm = AboutVM()
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 15){
                    
                    Text(vm.about.icon)
                        .font(.system(size: 60))
                        .shadow(color: Color.black.opacity(0.6), radius: 10, x: 0, y: 5)
                    Text(vm.about.name)
                        .font(.largeTitle.bold())
                    Text(vm.about.version)
                        .offset(y:-10)
                    Divider()
                        .background(.white)
                        .padding(.bottom, 5)

                    Text(vm.about.intro)
                        .padding(.horizontal)
                        
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    VStack(spacing: 5){
                        
                        Text("Made with ❤ by SwiftUI")
                            .font(.footnote)
                        Text(vm.about.year)
                            .font(.footnote)
                    }
                }
                .foregroundColor(.white)
                .padding()
            }
            .navigationTitle("About")
            .staticBg()
        }
        .navigationViewStyle(.stack)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var vm = AboutVM()
    static var previews: some View {
        AboutView(vm: vm)
            .preferredColorScheme(.dark)
    }
}
