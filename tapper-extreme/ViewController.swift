//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Lawrence Johnson on 12/23/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var play: UIButton!
    @IBOutlet weak var picker: UITextField!
    @IBOutlet weak var coin: UIButton!
    @IBOutlet weak var count: UILabel!
    
    var clickCount: Int = 0, currentCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startGame(sender: AnyObject) {
        if !isnan(Double(picker.text!)!) {
            clickCount = Int(picker.text!)!
            logo.hidden = true
            play.hidden = true
            picker.hidden = true
            coin.hidden = false
            count.hidden = false
            count.text = "0"
            currentCount = 0
        }
    }
    
    @IBAction func addToCount(sender: AnyObject) {
        if currentCount < (clickCount - 1) {
            currentCount++
            count.text = String(currentCount)
        }
        else {
            endGame()
        }
    }
    
    func endGame() {
        logo.hidden = false
        play.hidden = false
        picker.hidden = false
        coin.hidden = true
        count.hidden = true
        picker.text = ""
        currentCount = 0
        clickCount = 0
    }

}

