//
//  FormViewController.swift
//  Aland
//
//  Created by Olena Ostrozhynska on 25.07.2018.
//  Copyright © 2018 Olena Ostrozhynska. All rights reserved.
//


import UIKit


class FormViewController: UIViewController {

    // Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!

    var model: FormModel?

    // Methods

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Actions:

    @IBAction func Back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Creating a model
        // (creating an instance of a class FormMadel)

        let model = FormModel.init(userName: nameTextField.text!,
                                   userLastname: lastNameTextField.text!,
                                   userAge: Int(ageTextField.text!)!)

        // Creating a destination view controller
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let helloVC = storyboard.instantiateViewController(withIdentifier: "HelloViewController") as! HelloViewController // StoryboardId at the Main.Storyboard is HelloViewController

        // putting model to destination view controller

        helloVC.model = model
        present(helloVC, animated: true, completion: nil)
    }
}
