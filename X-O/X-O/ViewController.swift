//
//  ViewController.swift
//  X-O
//
//  Created by Layona on 10/11/20.
//  Copyright © 2020 xcoded. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    @IBOutlet weak var turnLabel: UILabel!
    
    
    @IBAction func resetTapped() {
        restartgame()
    }
    
    
    // X % 2 == 0 -> even
    // X % 2 == 0 -> odd
    var counter = 0

    @IBAction func press(_ sender: UIButton) {
        
        print("printed")
        print(counter)
        
        if counter % 2 == 0{
         sender.setTitle( "X", for: .normal)
        sender.setTitleColor( .green, for: .normal)
            turnLabel.text = "O turn"
        }
        
        else{
             sender.setTitle( "O", for: .normal)
        sender.setTitleColor( .red, for: .normal)
            turnLabel.text = "X turn"
            
        }
        counter += 1
        sender.isEnabled = false
        
        // X winning
        if (b1.titleLabel?.text == "X" && b2.titleLabel?.text == "X" && b3.titleLabel?.text == "X") ||
        (b4.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b6.titleLabel?.text == "X") ||
       (b7.titleLabel?.text == "X" && b8.titleLabel?.text == "X" && b9.titleLabel?.text == "X") ||
        (b1.titleLabel?.text == "X" && b4.titleLabel?.text == "X" && b7.titleLabel?.text == "X") ||
        (b2.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b8.titleLabel?.text == "X") ||
        (b3.titleLabel?.text == "X" && b6.titleLabel?.text == "X" && b9.titleLabel?.text == "X") ||
        (b1.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b9.titleLabel?.text == "X") ||
        (b3.titleLabel?.text == "X" && b5.titleLabel?.text == "X" && b7.titleLabel?.text == "X")
            {
                
            print("X is the winner")
                
            let alertController = UIAlertController(title: "X won" , message: "Please press on the next button to continue", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "play again", style: .cancel, handler: nil)
                alertController.addAction(restartAction)
                present(alertController, animated: true, completion: nil)
                
    
        }
        
        // O winning
         if (b1.titleLabel?.text == "O" && b2.titleLabel?.text == "O" && b3.titleLabel?.text == "O") ||
            (b4.titleLabel?.text == "O" && b5.titleLabel?.text == "O" && b6.titleLabel?.text == "O") ||
            (b7.titleLabel?.text == "O" && b8.titleLabel?.text == "O" && b9.titleLabel?.text == "O") ||
            (b1.titleLabel?.text == "O" && b4.titleLabel?.text == "O" && b7.titleLabel?.text == "O") ||
            (b2.titleLabel?.text == "O" && b5.titleLabel?.text == "O" && b8.titleLabel?.text == "O") ||
            (b3.titleLabel?.text == "O" && b6.titleLabel?.text == "O" && b9.titleLabel?.text == "O") ||
            (b1.titleLabel?.text == "O" && b5.titleLabel?.text == "O" && b9.titleLabel?.text == "O") ||
            (b3.titleLabel?.text == "O" && b5.titleLabel?.text == "O" && b7.titleLabel?.text == "O")
                   
         {
        print("O is the winner")
            
            let alertController = UIAlertController(title: "O won" , message: "Please press on the next button to continue", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Play again", style: .cancel) { (alert) in
                // restart game
                self.restartgame()
        
            }
                alertController.addAction(restartAction)
                present(alertController, animated: true, completion: nil)
                
        
    }
      
  }

    func restartgame()
    {
        b1.setTitle( "", for: .normal)
        b1.titleLabel?.text = ""
        b1.isEnabled = true
        
        b2.setTitle( "", for: .normal)
        b2.titleLabel?.text = ""
        b2.isEnabled = true
        
        b3.setTitle( "", for: .normal)
        b3.titleLabel?.text = ""
        b3.isEnabled = true
        
        b4.setTitle( "", for: .normal)
        b4.titleLabel?.text = ""
        b4.isEnabled = true
        
        b5.setTitle( "", for: .normal)
        b5.titleLabel?.text = ""
        b5.isEnabled = true
        
        b6.setTitle( "", for: .normal)
        b6.titleLabel?.text = ""
        b6.isEnabled = true
        
        b7.setTitle( "", for: .normal)
        b7.titleLabel?.text = ""
        b7.isEnabled = true
        
        b8.setTitle( "", for: .normal)
        b8.titleLabel?.text = ""
        b8.isEnabled = true
        
        b9.setTitle( "", for: .normal)
        b9.titleLabel?.text = ""
        b9.isEnabled = true
        
        
        counter = 0
        turnLabel.text = "X turn"
        
    }
}
