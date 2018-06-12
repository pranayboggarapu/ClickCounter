    //
//  ViewController.swift
//  ClickCounter
//
//  Created by Sai Venkata Pranay Boggarapu on 6/9/18.
//  Copyright © 2018 Sai Venkata Pranay Boggarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var countClicks: Int = 0
    var counterLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let counterLabel = UILabel()
        counterLabel.frame = CGRect.init(x: 100, y: 100, width: 60, height: 60)
        counterLabel.text = "0"
        
        self.counterLabel = counterLabel
        
        view.addSubview(counterLabel)
        
        let clickCounterButton = UIButton()
        clickCounterButton.frame = CGRect.init(x: 100, y: 150, width: 150, height: 60)
        clickCounterButton.setTitle("Click here", for: .normal)
        clickCounterButton.setTitleColor(UIColor.blue, for: .normal)
        
        clickCounterButton.addTarget(self, action: #selector(ViewController.incrementCounter), for: UIControlEvents.touchUpInside)
        
        view.addSubview(clickCounterButton)
    }

    @objc func incrementCounter(){
        self.countClicks += 1
        self.counterLabel.text = String(countClicks)
    }
}

