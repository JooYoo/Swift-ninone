//
//  RpsViewModel.swift
//  Ninone
//
//  Created by Yu on 2022/2/7.
//

import Foundation

class RpsViewModel: ObservableObject {
    var rps = ["✊🏼", "✋🏼", "✌🏼"]
    enum res {
        case win
        case lose
        case deuce
    }
    let expectRoundAmount = 4
    
    @Published var aiChoiceIdx = Int.random(in: 0...2)
    @Published var shouldWin = Bool.random()
    @Published var resState = res.deuce
    @Published var score = 0
    @Published var round = 1
    @Published var showingAlert = false
    @Published var alerTitle = "Game Over"
    @Published var showingSheet = false
    
    func userTapped(_ userChoosed: String){
        
        let aiRes = rps[aiChoiceIdx]
        
        switch aiRes {
        case "✊🏼":
            if userChoosed == "✋🏼" {
                userShouldWinHandler()
            }else if(userChoosed == "✌🏼"){
                userShouldLoseHandler()
            }else{
                resState = .deuce
            }
        case "✌🏼":
            if userChoosed == "✊🏼" {
                userShouldWinHandler()
            } else if (userChoosed == "✋🏼"){
                userShouldLoseHandler()
            }else{
                resState = .deuce
            }
        case "✋🏼":
            if userChoosed == "✌🏼" {
                userShouldWinHandler()
            }else if(userChoosed == "✊🏼"){
                userShouldLoseHandler()
            }else{
                resState = .deuce
            }
        default: ()
        }
        
        nextRound()
    }
    
    func userShouldWinHandler(){
        if shouldWin {
            score += 1
            resState = .win
        }else{
            score -= 1
            resState = .lose
        }
    }
    
    func userShouldLoseHandler(){
        if !shouldWin {
            score += 1
            resState = .win
        }else{
            score -= 1
            resState = .lose
        }
    }
    
    func nextRound(){
        // check if end
        if round == expectRoundAmount {
            // showing alert
            showingAlert = true
        } else {
            // next round
            round += 1
            aiChoiceIdx = Int.random(in: 0...2)
            shouldWin = Bool.random()
        }
    }
    
    func restart(){
        round = 1
        score = 0
        resState = .deuce
        aiChoiceIdx = Int.random(in: 0...2)
        shouldWin = Bool.random()
    }
    
    // MARK: - This app info
    @Published var appDesc = MiniAppDesc(description: "About RPS lorem 🥰", keywords: ["Button", "List", "NavigationView"])
}
