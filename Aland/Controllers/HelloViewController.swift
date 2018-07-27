//
//  HelloViewController.swift
//  Aland
//
//  Created by Olena Ostrozhynska on 25.07.2018.
//  Copyright © 2018 Olena Ostrozhynska. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {

//Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabe: UILabel!

    var model: FormModel?

// Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = String.init(format: "%@ %@", (model?.firstName)!, (model?.lastName)!)
        guard let age = model?.age else { return }
        ageLabe.text = String.init(format: "%@ years", String(age))
    }

    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
