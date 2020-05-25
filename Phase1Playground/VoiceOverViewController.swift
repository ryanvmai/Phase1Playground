//
//  VoiceOverViewController.swift
//  Phase1Playground
//
//  Created by Ryan Mai on 5/25/20.
//  Copyright © 2020 Ryan Mai. All rights reserved.
//

import UIKit

class VoiceOverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !UIAccessibility.isReduceTransparencyEnabled {
            view.backgroundColor = .clear

            let blurEffect = UIBlurEffect(style: .dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)

            blurEffectView.frame = self.view.bounds
        } else {
            view.backgroundColor = .black
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
