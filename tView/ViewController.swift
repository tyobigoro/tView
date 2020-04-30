//
//  ViewController.swift
//  tView
//
//  Created by tyobigoro on 2020/04/19.
//  Copyright © 2020 tyobigoro. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var labelBottom: NSLayoutConstraint!
    
    @IBAction func moveLabel(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.5, animations: {
            //self.label.frame.origin.y += 150 // <= ダメなやつ
            self.labelBottom.constant -= 150 // <= 大丈夫なやつ
            self.view.layoutIfNeeded()       // <= 大丈夫なやつ
        })
    }
    
}

