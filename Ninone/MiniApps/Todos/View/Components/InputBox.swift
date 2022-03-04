//
//  InputBox.swift
//  Ninone
//
//  Created by Yu on 2022/3/4.
//

import SwiftUI

struct InputBox: View {
    @Binding var inputValue: String
     
     var body: some View{
         TextField("input todo...", text: $inputValue)
             .disableAutocorrection(true)
             .autocapitalization(.none)
     }
}

struct InputBox_Previews: PreviewProvider {
    static var previews: some View {
        InputBox(inputValue: .constant(""))
    }
}
