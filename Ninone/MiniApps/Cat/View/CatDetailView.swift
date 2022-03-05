//
//  CatDetailView.swift
//  Ninone
//
//  Created by Yu on 2022/3/5.
//

import SwiftUI

struct CatDetailView: View {
    var breed:Breed
    
    var body: some View {
        
        ScrollView{
            VStack{
                KFImageCache(urlStr: breed.image?.url ?? "nil", maxSize: 400)
                Text(breed.name)
                    .font(.largeTitle.bold())
                Text(breed.origin)
                    .font(.title3)
                    .padding(.bottom, 5)
                Text(breed.temperament)
                    .font(.caption)
                Divider()
                Text(breed.additonialInfo)
                    .padding(.horizontal, 20)
            }
            .padding()
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

//struct CatDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CatDetailView()
//    }
//}
