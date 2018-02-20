//
//  FirstViewController.swift
//  RPS-Gundu
//
//  Created by student on 2/19/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func conToStr(_ a:Model.Choice)->String{
        switch a{
        case .Rock : return "Rock"
            case .Paper : return "Paper"
            case .Scissor : return "Scissor"
        case .None : return "None"
        }
    }
    @IBOutlet weak var rLBL: UIButton!
    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.model.haveResult(){
            _ =  AppDelegate.model.choosePlayer1
            _ = AppDelegate.model.choosePlayer2
            
//            rLBL.text = "Player 1 "+conToStr(AppDelegate.model.choosePlayer1) + "\n Player 2"+
        //    conToStr(AppDelegate.model.choosePlayer2)
            
            
            
        }
    }
    
    
    
}

