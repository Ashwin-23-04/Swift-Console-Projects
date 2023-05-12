//
//  User.swift
//  LinkedInPost
//
//  Created by ashwin-pt6735 on 10/02/23.
//

import Foundation

struct User{
    let name:String
    let pass: String
    let information: String
    
    init(name: String, pass: String, information: String) {
        self.name = name
        self.pass = pass
        self.information = information
    }
        
    var posts: [Post] = []
    
    mutating func addPost(post: Post) {
        posts.append(post)
        HomePage.addHomePagePost(post)
    }
    func display(){
        for post in posts{
            print(post.user)
        }
    }
}
