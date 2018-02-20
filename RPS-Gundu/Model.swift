//
//  Model.swift
//  RPS-Gundu
//
//  Created by student on 2/19/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class Model: NSObject {
    enum Choice:Int { case None = 0, Rock, Paper, Scissor}
    var player1Option:Choice = Choice.None
    var player2Option:Choice = Choice.None
//    1. reset() - set both properties to None.
//    2. haveResult() -> Bool - Return true if neither property is None.
//    3. winner() -> String - One of “Its a Tie”, “Player 1 wins”, “Player 2 wins”.
//    4. choosePlayer1(pick:Choice) - Set player1Choice
//    5. choosePlayer2(pick:Choice) - Set player2Choice
    func reset()
    {
      player1Option = Choice.None
      player2Option  = Choice.None
    }
    
    func haveResult() -> Bool{
        return player1Option != Choice.None && player2Option != Choice.None
        
    }
    
    func choosePlayer1(pick:Choice){
        player1Option = pick
    }
    func choosePlayer2(pick:Choice){
        player2Option = pick
    }
    
    func winner() -> String{
        
        if(player1Option == player2Option)
        {
            return "Its a Tie"
        }
        
        if abs(player1Option.rawValue - player2Option.rawValue) == 1
        {
            return player2Option.rawValue > player1Option.rawValue ? "player 2 Wins" : "player 1 Wins"
        }else{
            return player2Option.rawValue < player1Option.rawValue ? "player 2 Wins" : "player 1 Wins"
        }
    
    }

}
