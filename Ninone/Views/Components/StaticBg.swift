//
//  StaticBg.swift
//  Ninone
//
//  Created by Yu on 2022/2/28.
//

import SwiftUI

struct StaticBg: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                Image("bg")
                    .resizable()
                    .blur(radius: 1)
                    .scaledToFill()
                    .ignoresSafeArea()
                    .blur(radius: 5)
            )
    }
}

extension View {
    func staticBg() -> some View {
        modifier(StaticBg())
    }
}

//struct StaticBg_Previews: PreviewProvider {
//    static var previews: some View {
//        StaticBg()
//    }
//}
