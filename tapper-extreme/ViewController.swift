//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Lawrence Johnson on 12/23/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Control vars
    var maxTaps: Int = 0, currentTaps: Int = 0
    
    // Start screen
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    // In-game
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLable: UILabel!
    
    // Start game
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            startGame();
        }
    }
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps++;
        updateCurrentTaps();
        
        if isGameOver() {
            restartGame();
        }
    }
    
    func updateCurrentTaps() {
        tapsLable.text = "\(currentTaps) Taps";
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true;
        }
        else {
            return false;
        }
    }
    
    func startGame() {
        logoImg.hidden = true;
        howManyTapsTxt.hidden = true;
        playButton.hidden = true;
        
        tapButton.hidden = false;
        tapsLable.hidden = false;
        
        maxTaps = Int(howManyTapsTxt.text!)!
        currentTaps = 0;
        updateCurrentTaps()
    }
    
    func restartGame() {
        maxTaps = 0;
        tapsLable.text = "";
        howManyTapsTxt.text = "";
        
        logoImg.hidden = false;
        howManyTapsTxt.hidden = false;
        playButton.hidden = false;
        
        tapButton.hidden = true;
        tapsLable.hidden = true;
    }
}

