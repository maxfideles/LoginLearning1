//
//  LoginAuthViewModel.swift
//  LoginLearning1
//
//  Created by Max Victor on 21/02/2023.
//

import Foundation
import Firebase

final class LoginViewMode: ObservableObject{
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    
    func login(){
        Auth.auth().signIn(withEmail: email, password: password) {result, error in if error != nil {
            print(error!.localizedDescription)
        }
        }
    }
    
    func register(){
        Auth.auth().createUser(withEmail: email, password: password){result,error in
            if error != nil {
                print(error!.localizedDescription)
            }
        }
    }
    
    
    
}
