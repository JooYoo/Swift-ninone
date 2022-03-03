//
//  AppInfoSheet.swift
//  Ninone
//
//  Created by Yu on 2022/3/2.
//

import SwiftUI
import WrappingHStack

struct AppInfoSheet<Content: View>: View {
    let info: MiniAppInfo
    @ViewBuilder var content: Content
    
    var body: some View {
        ZStack{
            // bg
            content
                .ignoresSafeArea()
            
            // content-text
            ScrollView{
                VStack(alignment:.center, spacing: 15){
                    VStack(spacing: 10){
                        Text(info.icon)
                            .font(.system(size: 60))
                            .shadow(color: Color.black.opacity(0.6), radius: 10, x: 0, y: 5)
                        Text(info.name)
                            .font(.largeTitle.bold())
                        Text(info.description)
                            .padding(.horizontal)
                    }
                    .padding(.bottom, 20)
                    
                    WrappingHStack(info.keywords, id: \.self){ word in
                        Section{
                            Text(word)
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5)
                                .background(Color.random)
                                .cornerRadius(20)
                                .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 3)
                        }
                        .padding(.vertical, 3)
                    }
                    .padding(.horizontal)
                }
                .padding(.top,100)
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

extension Color {
    static var random: Color {
        return Color(
            hue: .random(in: 0.4...1),
            saturation: .random(in: 0.4...1),
            brightness: .random(in: 0.4...0.8)
        )
    }
}

//struct AppInfoSheet_Previews: PreviewProvider {
//    static var appInfoVM = AppInfoVM()
//
//    static var previews: some View {
//        AppInfoSheet(info: appInfoVM.rpsInfo)
//    }
//}
