//
//  ViewController.swift
//  tttStackView
//
//  Created by Grant Brooks on 9/7/17.
//  Copyright © 2017 Grant Brooks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet var button: [UIButton]!
    
    var winning = [0,0,0,0,0,0,0,0,0]
    var weHaveWinner: Int = 0
    var turn: Int = 0
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.gray && weHaveWinner == 0 {
            if turn == 0 {
                sender.backgroundColor = UIColor.red
                turn = 1
                winner(color: sender.backgroundColor!, colorstring: "Red")
            }
            else if turn == 1 {
                sender.backgroundColor = UIColor.blue
                turn = 0
                winner(color: sender.backgroundColor!, colorstring: "Blue")
            }
        }
    }
    
    @IBAction func reset(_ sender: UIButton) {
        for butt in button {
            butt.backgroundColor = UIColor.gray
        }
        winning = [0,0,0,0,0,0,0,0,0]
        winnerLabel.text = ""
        weHaveWinner = 0
        
    }
    
    
    func winner(color: UIColor, colorstring: String) {
        winning = [0,0,0,0,0,0,0,0,0]
        if let x = self.view.viewWithTag(1) as? UIButton {
            if x.backgroundColor == color {
                winning[0] = 1
            }
        }
        if let x = self.view.viewWithTag(2) as? UIButton {
            if x.backgroundColor == color {
                winning[1] = 1
            }
        }
        if let x = self.view.viewWithTag(3) as? UIButton {
            if x.backgroundColor == color {
                winning[2] = 1
            }
        }
        if let x = self.view.viewWithTag(4) as? UIButton {
            if x.backgroundColor == color {
                winning[3] = 1
            }
        }
        if let x = self.view.viewWithTag(5) as? UIButton {
            if x.backgroundColor == color {
                winning[4] = 1
            }
        }
        if let x = self.view.viewWithTag(6) as? UIButton {
            if x.backgroundColor == color {
                winning[5] = 1
            }
        }
        if let x = self.view.viewWithTag(7) as? UIButton {
            if x.backgroundColor == color {
                winning[6] = 1
            }
        }
        if let x = self.view.viewWithTag(8) as? UIButton {
            if x.backgroundColor == color {
                winning[7] = 1
            }
        }
        if let x = self.view.viewWithTag(9) as? UIButton {
            if x.backgroundColor == color {
                winning[8] = 1
            }
        }
        print(winning)
        
        //now to see if the player won
        var counting = 0
        for x in winning {
            counting += x
        }
        
        if winning[0] == 1 && winning[1] == 1 && winning[2] == 1{
            winnerLabel.text = "\(colorstring) Wins"
            weHaveWinner = 1
        }
        else if  winning[0] == 1 && winning[4] == 1 && winning[8] == 1{
            winnerLabel.text = "\(colorstring) Wins"
            weHaveWinner = 1
        }
        else if winning[0] == 1 && winning[3] == 1 && winning[6] == 1{
            winnerLabel.text = "\(colorstring) Wins"
            weHaveWinner = 1
        }
        else if winning[2] == 1 && winning[4] == 1 && winning[6] == 1{
            winnerLabel.text = "\(colorstring) Wins"
            weHaveWinner = 1
        }
        else if winning[3] == 1 && winning[4] == 1 && winning[5] == 1{
            winnerLabel.text = "\(colorstring) Wins"
            weHaveWinner = 1
        }
        else if winning[6] == 1 && winning[7] == 1 && winning[8] == 1{
            winnerLabel.text = "\(colorstring) Wins"
            weHaveWinner = 1
        }
        else if winning[1] == 1 && winning[4] == 1 && winning[7] == 1{
            winnerLabel.text = "\(colorstring) Wins"
            weHaveWinner = 1
        }
        else if winning[2] == 1 && winning[5] == 1 && winning[8] == 1{
            winnerLabel.text = "\(colorstring) Wins"
            weHaveWinner = 1
        }
        else if counting == 5 {
            winnerLabel.text = "Cat's Game!"}
        
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        for butt in button {
            butt.backgroundColor = UIColor.gray
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

