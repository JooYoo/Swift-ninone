//
//  GridCardBigFont.swift
//  Ninone
//
//  Created by Yu on 2022/3/1.
//

import SwiftUI

struct GridCardBigFont: View {
    let app: MiniApp
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            
            // icon
            ZStack{
                Circle()
                    .fill(.white.opacity(0.3))
                    .frame(width: 35, height: 35)
                Text(app.emoji)
                    .font(.system(size: 20))
                    .padding()
            }
            .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 5)
            .offset(x: -10)
            
            // Txt
            Text(app.name)
                .font(.system(size: 30).bold())
                    .foregroundColor(.white)
                    .padding(.bottom, 5)
            Text(app.shortDesc)
                .font(.callout)
                .fontWeight(.light)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .lineLimit(4)
            
            Spacer()
            
            // Date
            Text(app.createDate)
                .font(.caption2)
                .fontWeight(.thin)
                .foregroundColor(.white)
        }
        .padding()
        .background(app.themeColor.opacity(0.6))
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.6), radius: 10, x: 0, y: 5)
        .shadow(color: app.themeColor.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

//struct GridCardBigFont_Previews: PreviewProvider {
//    static var previews: some View {
//        GridCardBigFont()
//    }
//}
