//
//  MonsterLoginFile.swift
//  Aland
//
//  Created by Olena Ostrozhynska on 25.07.2018.
//  Copyright © 2018 Olena Ostrozhynska. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class MonsterLoginFile: UIViewController {

    @IBOutlet weak var gifImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        gifImage.image = UIImage.gif(name: "giphy9")

    }
}
