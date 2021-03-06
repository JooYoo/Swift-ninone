//
//  WeatherVM.swift
//  Ninone
//
//  Created by Yu on 2022/3/3.
//

import Foundation

class WeatherVM: ObservableObject {
    @Published var input: String = ""
        
    @Published var condition: String = ""
    @Published var description: String = ""
    @Published var icon: String = ""
    @Published var temp: String = ""
    @Published var tempMin: String = ""
    @Published var tempMax: String = ""
    @Published var name: String = ""
    
    // get 
    var sfId: String {
        switch icon {
        case "01d":
            return "sun.max"
        case "01n":
            return "moon.stars"
        case "02d":
            return "cloud.sun"
        case "02n":
            return "cloud.moon"
        case "09d":
            return "cloud.rain"
        case "09n":
            return "cloud.moon.rain"
        case "10d":
            return "cloud.sun.rain"
        case "10n":
            return "cloud.moon.rain"
        case "11d":
            return "cloud.bolt.rain"
        case "11n":
            return "cloud.bolt.rain"
        case "13d":
            return "snowflake"
        case "13n":
            return "snowflake"
        case "50d":
            return "cloud.fog"
        case "50n":
            return "cloud.fog"
        default:
            return "cloud"
        }
    }
    
    init(){
        Task{
            await fetchData(name: "Ulm")
        }
    }
    
    // MARK: - fetch data
    func fetchData(name:String) async {
        // 0. get apiKey from config
        let apiKey = getKey()
        
        // 1. create URL
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(name)&units=metric&appid=\(apiKey)") else {
            print("read Endpoint url error")
            return
        }
        
        do {
            // 2. fetch data
            let (data, _) = try await URLSession.shared.data(from: url)
            
            // 3. decode data
            if let decoded = try? JSONDecoder().decode(WeatherModel.self, from: data){
                
                let weather = decoded.weather[0]
                let main = decoded.main
                
                DispatchQueue.main.async {
                    self.condition = weather.main
                    self.description = weather.description
                    self.icon = weather.icon
                    self.temp = String(format: "%.0f??", main.temp)
                    self.tempMin = String(format: "%.0f??", main.temp_min)
                    self.tempMax = String(format: "%.0f??", main.temp_max)
                    self.name = decoded.name
                }
            }
            
        } catch {
            print("fetch Data error")
        }
    }
    
    // MARK: - get api-key
    func getKey() -> String{
        // get apiKey from Bundle
        let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String
        
        // check if key is ok
        guard let key = apiKey, !key.isEmpty else {
            print("API key does not exist")
            return ""
        }
        
        return key
    }
}

