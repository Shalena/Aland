//
//  AlexanderViewController.swift
//  Aland
//
//  Created by Olena Ostrozhynska on 24.07.2018.
//  Copyright © 2018 Olena Ostrozhynska. All rights reserved.
//

import UIKit

class AlexanderViewController: UIViewController {
    var blinkStatus = true

    @IBOutlet weak var heyLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        blinkStatus = true
        let _ = Timer.scheduledTimer(timeInterval: 1
            , target:self, selector: #selector(self.blink), userInfo: nil,repeats: true)
        blink()
    }


    @objc func blink() {
        self.blinkStatus  = !self.blinkStatus
        self.heyLabel.isHidden = self.blinkStatus
        self.heyLabel.textColor = UIColor.random()
    }
    
    @IBAction func RONAldo(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}
