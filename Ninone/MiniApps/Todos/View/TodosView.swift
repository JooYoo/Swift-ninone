//
//  TodosView.swift
//  Ninone
//
//  Created by Yu on 2022/2/4.
//

import SwiftUI

struct TodosView: View {
    @StateObject var vm = TodoVM()
    @StateObject var infoVm = AppInfoVM()
    @State var showingSheet = false
    
    var body: some View {
        List{
            Section{
                InputBox(inputValue: $vm.inputVal)
            }
            Section{
                ForEach(vm.todos, id: \.id){ todo in
                    if !todo.isInvalidated {
                        ListItem(todo: todo)
                            .onTapGesture(count: 1) {
                                vm.updateTodo(id: todo.id)
                            }
                            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                                Button(role: .destructive){
                                    vm.deleteTodo(id: todo.id)
                                } label: {
                                    Image(systemName: "trash")
                                }
                            }
                    }
                }
            }
        }
        .onSubmit {
            vm.addTodo(txt: vm.inputVal)
        }
        .navigationViewStyle(.stack)
        .navigationBarTitle("Todos", displayMode: .inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button{
                    showingSheet = true
                }label: {
                    Label("About", systemImage: "info.circle")
                        .foregroundColor(.white)
                }
            }
        }
        .sheet(isPresented: $showingSheet){
            AppInfoSheet(info: infoVm.todosInfo) {
                LinearGradient(colors: [Color(red: 0.93, green: 0.43, blue: 0.63), Color(red: 0.93, green: 0.55, blue: 0.41)], startPoint: .topLeading, endPoint: .bottomTrailing)
            }
        }
    }
}

struct TodosView_Previews: PreviewProvider {
    static var previews: some View {
        TodosView()
    }
}
