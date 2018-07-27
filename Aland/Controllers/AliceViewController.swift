//
//  AliceViewController.swift
//  Aland
//
//  Created by Olena Ostrozhynska on 23.07.2018.
//  Copyright © 2018 Olena Ostrozhynska. All rights reserved.
//

import UIKit

class AliceViewController: UIViewController {

    @IBOutlet weak var benjamindab2: UIImageView!
    @IBOutlet weak var wallpaperSwitcher: UISwitch!
    @IBOutlet weak var wallpaper: UIImageView!
    @IBOutlet weak var willamLabel: UITextView!
    @IBOutlet weak var AntiDabbing_Campain: UIImageView!

    var blinkStatus = true


    override func viewDidLoad() {
        super.viewDidLoad()
        blinkStatus = true
        let _ = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(self.blink), userInfo: nil,repeats: true)
        blink()
        wallpaperSwitcher.isOn = true
        wallpaperSwitcher.tintColor = UIColor.red
        wallpaperSwitcher.onTintColor = UIColor.orange
    }


    //Actions

    @IBAction func AntiDAB_Campain(_ sender: UISwitch) {
        if sender.isOn {
           AntiDabbing_Campain.isHidden = false
        } else {
            AntiDabbing_Campain.isHidden = true
        }
    }

    @IBAction func benjamindab3(_ sender: UISwitch) {
        if sender.isOn {
            benjamindab2.isHidden = false
        } else {
            benjamindab2.isHidden = true
        }
    }


    @IBAction func olenaSwitcherChanged(_ sender: UISwitch) {

        if sender.isOn {
            willamLabel.text = "Willam smells"
        } else {
            willamLabel.text = "Willam does not smell"
        }
    }

    @IBAction func hidewallpaper(_ sender: UISwitch) {
//        if sender.isOn {
//            wallpaper.isHidden = false
//        } else {
//            wallpaper.isHidden = true
//        }

        // NOTICE: both variants are working good, but second one is shorter
        
        wallpaper.isHidden = !sender.isOn
    }

    @objc func blink() {
        self.blinkStatus  = !self.blinkStatus
        self.wallpaperSwitcher.isHidden = self.blinkStatus
    }
}
