//
//  GridCard.swift
//  Ninone
//
//  Created by Yu on 2022/2/28.
//

import SwiftUI

struct GridCard: View {
    let app:MiniApp
    
    var body: some View {
        VStack{
            // card-icon
            Text(app.emoji)
                .font(.system(size: 60))
                .padding(.vertical)
            // card-text
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
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.white.opacity(0.5))
        )
    }
}

//struct GridCard_Previews: PreviewProvider {
//    static var previews: some View {
//        GridCard()
//    }
//}
