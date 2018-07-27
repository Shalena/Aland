//
// BenjamiViewController.swift
//  Aland
//
//  Created by Olena Ostrozhynska on 24.07.2018.
//  Copyright © 2018 Olena Ostrozhynska. All rights reserved.

import UIKit
import Foundation

class BenjamiViewController: UIViewController, UITextViewDelegate {
  @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextView()
    }



    @IBAction func dab(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }

    func setupTextView() {
        let text = "Check how to dub here"
        let textLink = "here"
        let url = "https://www.youtube.com/watch?reload=9&v=UrlW8dcSWcs"
        let textAttributedString = NSMutableAttributedString(string: text)
        let linkRange = textAttributedString.mutableString.range(of: textLink)
        textAttributedString.addAttribute(.link, value: url, range: linkRange)

        textView.attributedText = textAttributedString
        textView.linkTextAttributes = [NSAttributedStringKey.foregroundColor.rawValue: UIColor.red]
    }

    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        return true
    }
}



