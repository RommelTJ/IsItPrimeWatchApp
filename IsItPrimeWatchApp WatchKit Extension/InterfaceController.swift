//
//  InterfaceController.swift
//  IsItPrimeWatchApp WatchKit Extension
//
//  Created by Rommel Rico on 3/24/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var userLabel: WKInterfaceLabel!
    @IBOutlet weak var answerLabel: WKInterfaceLabel!
    var number = 50
    
    @IBAction func doIsItPrime() {
        var isPrime = true
        if number == 1 {
            isPrime = false
        } else if number != 2 && number != 1 {
            for var i=2; i<number; i++ {
                if number%i == 0 {
                    isPrime = false
                }
            }
        }
        
        if isPrime {
            answerLabel.setText("It's Prime! :)")
        } else {
            answerLabel.setText("It's Not Prime! :(")
        }
    }
    
    @IBAction func sliderMoved(value: Float) {
        number = Int(value)
        userLabel.setText("Is \(number) Prime?")
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
