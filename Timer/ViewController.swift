//
//  ViewController.swift
//  Timer
//
//  Created by Duc Tran on 10/22/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    var timer = Timer()
    var counter = 0.0
    var isRunning = false
    
    override var preferredStatusBarStyle: UIStatusBarStyle
    {
        return.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = "\(counter)"
        playButton.isEnabled = true
        pauseButton.isEnabled = false
    }
    
    @IBAction func resetButtonTouch(_ sender: Any) {
        timer.invalidate()
        isRunning = false
        
        counter = 0
        timeLabel.text = "\(counter)"
        
        playButton.isEnabled = true
        pauseButton.isEnabled = false
    }
    
    @IBAction func playButtonTouch(_ sender: Any) {
        if !isRunning {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
            
            playButton.isEnabled = false
            pauseButton.isEnabled = true
            isRunning = true
        }
    }
    
    @IBAction func pauseButtonTouch(_ sender: Any) {
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isRunning = false
    }
    func updateTimer() {
        counter += 0.1
        timeLabel.text = String(format: "%.1f", counter)
    
}


















