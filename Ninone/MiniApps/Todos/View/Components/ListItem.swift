//
//  ListItem.swift
//  Ninone
//
//  Created by Yu on 2022/3/4.
//

import SwiftUI

struct ListItem: View {
    let todo:Todo
    
    var body: some View {
        HStack{
            if todo.isDone {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
            }else{
                Image(systemName: "circle")
                    .foregroundColor(.yellow)
            }
            Text(todo.txt)
        }
        .padding(.vertical, 15)
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(todo: Todo())
    }
}
