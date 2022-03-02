//
//  RpsInfoVM.swift
//  Ninone
//
//  Created by Yu on 2022/3/2.
//

import Foundation

class AppInfoVM: ObservableObject {
    
    @Published var rpsInfo = MiniAppInfo(
        icon: "✌🏼",
        name: "R.P.S",
        description: "Display rock, paper, and scissors randomly. The user gets a prompting, either should win or lose. Then the user needs to make a choice. The score will be calculated. Four rounds one game, popup a total score.",
        keywords: ["Button", "List", "NavigationView"]
    )
    
}
