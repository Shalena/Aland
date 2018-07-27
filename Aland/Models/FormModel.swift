//
//  FormModel.swift
//  Aland
//
//  Created by Olena Ostrozhynska on 25.07.2018.
//  Copyright © 2018 Olena Ostrozhynska. All rights reserved.
//

import Foundation

class FormModel: NSObject {
    var firstName: String?
    var lastName: String?
    var age: Int?

    init(userName: String, userLastname: String, userAge: Int) {
        self.firstName = userName
        self.lastName = userLastname
        self.age = userAge
    }
    //change
}
