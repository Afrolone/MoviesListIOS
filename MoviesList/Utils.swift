//
//  Utils.swift
//  MoviesList
//
//  Created by Ant Colony on 23. 11. 2021..
//

import Foundation
import UIKit

class Utils {
    static func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    static func areCredentialsOK(email: String, password: String) -> Bool {
        return email == "test@antcolony.io" && password == "Tutorial"
    }
}
