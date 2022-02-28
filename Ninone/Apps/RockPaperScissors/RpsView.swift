//
//  RockPaperScissorsView.swift
//  Ninone
//
//  Created by Yu on 2022/1/29.
//

import SwiftUI

struct RockPaperScissorsView: View {
    @StateObject var vm = RpsViewModel()
    
    var body: some View {
       
        ZStack{
            // bg-color
            switch vm.resState {
            case .win:
                Color(red: 0.02, green: 0.77, blue: 0.42)
                    .ignoresSafeArea()
            case .lose:
                Color(red: 1.00, green: 0.42, blue: 0.51)
                    .ignoresSafeArea()
            case .deuce:
                Color(red: 0.20, green: 0.67, blue: 0.88)
                    .ignoresSafeArea()
            }
            
            VStack{
                Text("Round: \(vm.round)/\(vm.expectRoundAmount)")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text(vm.rps[vm.aiChoiceIdx])
                    .font(.system(size: 120))
                    .padding(.vertical,20)
                    .padding(.horizontal,80)
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                
                Text("You should \(vm.shouldWin ? "WIN" : "LOSE")")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                
                Spacer()
                
                HStack{
                    ForEach(vm.rps, id: \.self) { item in
                        Button(item){
                            vm.userTapped("\(item)")
                        }
                    }
                }
                .font(.system(size: 90))
                .buttonStyle(.bordered)
                
                Text("SCORE: \(vm.score)")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                
            }
            .padding()
            .foregroundColor(.white)
            
        }
//        .navigationBarTitle("Ro.Pa.Sci")
//        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button{
                    vm.showingSheet = true
                }label: {
                    Label("About", systemImage: "info.circle")
                        .foregroundColor(.white)
                }
            }
        }
        .sheet(isPresented: $vm.showingSheet){
            // TODO: create new View to introduce the app
            Text("About this MiniApp")
        }
        .alert(vm.alerTitle, isPresented: $vm.showingAlert) {
            Button("Ok"){
                vm.restart()
            }
        } message: {
            Text("Your final score is \(vm.score)")
        }
    }
}

struct RockPaperScissorsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{        
            RockPaperScissorsView()
        }
    }
}
