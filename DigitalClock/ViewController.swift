//
//  ViewController.swift
//  DigitalClock
//
//  Created by Terrell Robinson on 11/2/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var digitalClockLabel: UILabel!
    
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var textColorSegment: UISegmentedControl!
    @IBOutlet weak var backgroundColorSegment: UISegmentedControl!
    
    @IBOutlet weak var settingsButton: UIButton!
    
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateClock), userInfo: nil, repeats: true)
        
        settingsView.isHidden = true
        settingsButton.alpha = 0.5
        
        
        settingsView.layer.cornerRadius = 5
        settingsButton.layer.cornerRadius = 5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateClock() {
        
        let timeFormatter = DateFormatter()
        
        timeFormatter.timeStyle = .medium
        
        digitalClockLabel.text = timeFormatter.string(from: Date())
        
    }
    
    
    @IBAction func showSettings(_ sender: AnyObject) {
        
        if settingsView.isHidden == true {
            
            settingsView.isHidden = false
            settingsButton.setTitle("Hide Settings", for: .normal)
            settingsButton.alpha = 1.0
            
        } else {
            
            settingsView.isHidden = true
            settingsButton.setTitle("Show Settings", for: .normal)
            settingsButton.alpha = 0.5
        }
        
    }
    
    @IBAction func textColorSegPressed(_ sender: AnyObject) {
        
        if (textColorSegment.selectedSegmentIndex == 0) {
            
            digitalClockLabel.textColor = UIColor.white
            
        } else if (textColorSegment.selectedSegmentIndex == 1) {
            
            digitalClockLabel.textColor = UIColor.black
            
        } else if (textColorSegment.selectedSegmentIndex == 2) {
            
            digitalClockLabel.textColor = UIColor.red
            
        } else if (textColorSegment.selectedSegmentIndex == 3) {
            
            digitalClockLabel.textColor = UIColor.green
            
        }
        
        
    }
    
    @IBAction func backgroundColorSegPressed(_ sender: AnyObject) {
        
        if (backgroundColorSegment.selectedSegmentIndex == 0) {
            
            self.view.backgroundColor = UIColor.black
            
        } else if (backgroundColorSegment.selectedSegmentIndex == 1) {
            
            self.view.backgroundColor = UIColor.white
            
        } else if (backgroundColorSegment.selectedSegmentIndex == 2) {
            
            self.view.backgroundColor = UIColor.yellow
            
        } else if (backgroundColorSegment.selectedSegmentIndex == 3) {
            
            self.view.backgroundColor = UIColor.blue
            
        }
        
    }
    
    
    


}

