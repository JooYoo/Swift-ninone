//
//  GlassmorphismBg.swift
//  Ninone
//
//  Created by Yu on 2022/2/5.
//

import SwiftUI

struct GlassmorphismBg: View {
    var body: some View {
        ZStack{
            // main color
            LinearGradient(
                colors: [
                    Color(red: 0.08, green: 0.13, blue: 0.30),
                    Color(red: 0.09, green: 0.20, blue: 0.38)
                ],
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
            
            // Glossy Circle
            GeometryReader{ proxy in
                let size = proxy.size
                
                // darker
                Color.black
                    .opacity(0.7)
                    .blur(radius: 100)
                    .ignoresSafeArea()
                
                // glow balls
                Circle()
                    .fill(Color(red: 0.53, green: 0.19, blue: 0.67))
                    .padding(50)
                    .blur(radius: 90)
                    .offset(x: -size.width/1.8, y: -size.height/5)
                
                Circle()
                    .fill(Color(red: 0.53, green: 0.19, blue: 0.67))
                    .padding(100)
                    .blur(radius: 110)
                    .offset(x: -size.width/1.8, y: size.height/2)
                
                Circle()
                    .fill(Color(red: 0.30, green: 0.58, blue: 0.71))
                    .padding(50)
                    .blur(radius: 150)
                    .offset(x: size.width/1.8, y: -size.height/2)
                
                Circle()
                    .fill(Color(red: 0.30, green: 0.58, blue: 0.71))
                    .padding(50)
                    .blur(radius: 90)
                    .offset(x: size.width/1.8, y: size.height/2)
            }
            
            
        }
    }
}

struct GlassmorphismBg_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphismBg()
    }
}
