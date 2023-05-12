//
//  Login.swift
//  LinkedInPost
//
//  Created by ashwin-pt6735 on 10/02/23.
//

import Foundation

struct Login{
    var username: String
    var password: String
    var result: Bool = false
    var users : [User] = []
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
        self.users = [(User(name: "Ashwin", pass: "123", information: "Great Programmer")),(User(name: "Raghav", pass: "123", information: "Legend Programmer"))]
        checkLogin()
    }
    mutating func checkLogin(){
        for user in users{
            if username == user.name && password == user.pass{
                self.result = true
            }
        }
    }
}
