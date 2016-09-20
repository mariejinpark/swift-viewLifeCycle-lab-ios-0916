//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Assign / pre-load all of the views and labels
    @IBOutlet weak var Dice_1: UIView!
    @IBOutlet weak var Dice_2: UIView!
    @IBOutlet weak var Dice_3: UIView!
    @IBOutlet weak var Dice_4: UIView!
    @IBOutlet weak var Dice_5: UIView!
    @IBOutlet weak var Dice_6: UIView!
    @IBOutlet weak var Dice_7: UIView!
    
    @IBOutlet weak var Label_1: UILabel!
    @IBOutlet weak var Label_2: UILabel!
    @IBOutlet weak var Label_3: UILabel!
    @IBOutlet weak var Label_4: UILabel!
    @IBOutlet weak var Label_5: UILabel!
    @IBOutlet weak var Label_6: UILabel!
    
    
    //hides all views when it loads
    func hideDices () {
        Dice_1.isHidden = true
        Dice_2.isHidden = true
        Dice_3.isHidden = true
        Dice_4.isHidden = true
        Dice_5.isHidden = true
        Dice_6.isHidden = true
        Dice_7.isHidden = true
    }
    
    func hideLabels () {
        Label_1.isHidden = true
        Label_2.isHidden = true
        Label_3.isHidden = true
        Label_4.isHidden = true
        Label_5.isHidden = true
        Label_6.isHidden = true
    }
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
            hideDices ()
            hideLabels ()
    }
   
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
        
@IBAction func dieButtonTapped(sender: AnyObject) {
    
    let randomNumber = randomDiceRoll()
    rearrangeDiceRollDisplay(number: randomNumber)
    updateLabelWithRoll(roll: randomNumber)

    counter += 1
        if counter == 7 {
            hideDices ()
            
            ()
            counter = 0
        }
}
    
    func rearrangeDiceRollDisplay (number: Int) {
        //updateLabelWithRoll(roll: number)
        

            switch number {
                
            case 1:
                 hideDices ()
                Dice_4.isHidden = false
                
            case 2:
                hideDices ()
                Dice_3.isHidden = false
                Dice_5.isHidden = false
                
            case 3:
                hideDices ()
                Dice_1.isHidden = false
                Dice_4.isHidden = false
                Dice_7.isHidden = false
                
            case 4:
                hideDices ()
                Dice_1.isHidden = false
                Dice_3.isHidden = false
                Dice_5.isHidden = false
                Dice_7.isHidden = false
                
            case 5:
                hideDices ()
                Dice_1.isHidden = false
                Dice_3.isHidden = false
                Dice_4.isHidden = false
                Dice_5.isHidden = false
                Dice_7.isHidden = false
                
            case 6:
                hideDices ()
                Dice_1.isHidden = false
                Dice_2.isHidden = false
                Dice_3.isHidden = false
                Dice_5.isHidden = false
                Dice_6.isHidden = false
                Dice_7.isHidden = false
                
            default:
                break
            }
        }

     func updateLabelWithRoll(roll: Int) {
        let rollResult = String(roll)
        
            if Label_1.isHidden {
                Label_1.text = rollResult
                Label_1.isHidden = false
            } else if Label_2.isHidden {
                Label_2.text = rollResult
                Label_2.isHidden = false
            } else if Label_3.isHidden {
                Label_3.text = rollResult
                Label_3.isHidden = false
            } else if Label_4.isHidden {
                Label_4.text = rollResult
                Label_4.isHidden = false
            } else if Label_5.isHidden {
                Label_5.text = rollResult
                Label_5.isHidden = false
            } else if Label_6.isHidden {
                Label_6.text = rollResult
                Label_6.isHidden = false
            }
        }

    
    
    
    
}
