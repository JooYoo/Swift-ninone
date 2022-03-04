//
//  WeatherView.swift
//  Ninone
//
//  Created by Yu on 2022/2/4.
//

import SwiftUI

struct WeatherView: View {
    @StateObject var vm = WeatherVM()
    @StateObject var infoVm = AppInfoVM()
    @State var showingSheet = false
    
    var body: some View {
        VStack{
            if vm.temp.isEmpty {
                ProgressView()
            }else{
                VStack{
                    Spacer()
                    
                    Image(systemName: vm.sfId)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .padding(.horizontal)
                    Text(vm.temp)
                        .font(.system(size: 70))
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(vm.name)
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                    Text(vm.description)
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("\(vm.tempMin) ~ \(vm.tempMax)")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 1)
                    
                    Spacer()
                }
            }
        }
        .searchable(text: $vm.input)
        .disableAutocorrection(true)
        .onSubmit(of: .search) {
            Task{
                await vm.fetchData(name: vm.input)
                vm.input = ""
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarTitle("Weather", displayMode: .inline)
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
            AppInfoSheet(info: infoVm.weatherInfo) {
                LinearGradient(colors: [ Color(red: 0.17, green: 0.53, blue: 0.77), Color(red: 1.00, green: 0.73, blue: 0.93)], startPoint: .topLeading, endPoint: .bottomTrailing)
            }
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(vm: WeatherVM())
    }
}
