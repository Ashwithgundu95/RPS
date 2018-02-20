//
//  SecondViewController.swift
//  RPS-Gundu
//
//  Created by student on 2/19/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var p1LBL: UILabel!
    @IBAction func rockB(_ sender: Any) {
        p1LBL.text = "Selection made: change if you want."
        
    }
    
    @IBAction func paperB(_ sender: Any) {
    }
    
    @IBAction func scissorsB(_ sender: Any) {
    }
    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.model.haveResult(){
            p1LBL.text = "SSelection made: change if you want."
        }
        else
        {
            p1LBL.text = "Make a Selection"
        }
    }
    

}

