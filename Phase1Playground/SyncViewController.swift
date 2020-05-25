//
//  SyncViewController.swift
//  Phase1Playground
//
//  Created by Ryan Mai on 5/25/20.
//  Copyright © 2020 Ryan Mai. All rights reserved.
//

import UIKit

class SyncViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //https://stackoverflow.com/questions/17041669/creating-a-blurring-overlay-view
        if !UIAccessibility.isReduceTransparencyEnabled {
            view.backgroundColor = .clear

            let blurEffect = UIBlurEffect(style: .dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)

            blurEffectView.frame = self.view.bounds
        } else {
            view.backgroundColor = .black
        }
        
    }
    
    func taskComplete() {
        DispatchQueue.main.async {
            self.textLabel.text = "Task Complete"
        }
    }
    
    @IBAction func syncCodeButton(_ sender: Any) {
        do {
            sleep(5)
        }
        textLabel.text = "Task Complete"
    }
    
    @IBAction func asyncCodeButton(_ sender: Any) {
        DispatchQueue.global(qos: .userInitiated).async {
            do {
                sleep(5)
                DispatchQueue.main.async {
                     self.textLabel.text = "Task Complete"
                }
            }
        }
        textLabel.text = "Task running in background"
    }
    
    @IBAction func checkButton(_ sender: Any) {
        textLabel.text = "UI is Active"
    }
    

    
}
