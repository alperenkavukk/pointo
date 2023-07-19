//
//  LoginPageModel.swift
//  Pointo
//
//  Created by Alperen Kavuk on 18.07.2023.
//

import SwiftUI

class LoginPageModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    //register properties
    @Published var reEnterPassword: String = ""
    @Published var ShowreEnterPassword: Bool = false
}
