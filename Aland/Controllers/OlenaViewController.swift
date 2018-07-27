//
//  OlenaViewController.swift
//  Aland
//
//  Created by Olena Ostrozhynska on 24.07.2018.
//  Copyright © 2018 Olena Ostrozhynska. All rights reserved.
//

import UIKit

class OlenaViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!


    override func viewDidLoad() {
        super.viewDidLoad()
        makeGetCall()
    }

    func makeGetCall() {
        let todoEndpoint: String = "https://jsonplaceholder.typicode.com/comments/501"
        guard let url = URL(string: todoEndpoint) else { return }
        let urlRequest = URLRequest(url: url)

        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)

        let task = session.dataTask(with: urlRequest) {
            (data, response, error) in
            guard error == nil else {
                print(error!)
                return
            }
            guard let responseData = data else { return }

            do {
                guard let todo = try JSONSerialization.jsonObject(with: responseData, options: [])
                    as? [String: Any] else {
                        print("error trying to convert data to JSON")
                        return
                }

                print("The todo is: " + todo.description)

                guard let bodyText = todo["body"] as? String else {
                    print("Could not get body from JSON")
                    return
                }

                DispatchQueue.main.async {
                    self.textView.text = bodyText
                }


            } catch  {
                print("error trying to convert data to JSON")
                return
            }
        }
        task.resume()
    }

    
}
