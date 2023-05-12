//
//  HomePage.swift
//  LinkedInPost
//
//  Created by ashwin-pt6735 on 10/02/23.
//

import Foundation

struct HomePage{
    static var allPosts: [Post] = []
    static var likedUser: [String] = []
    
    static func addHomePagePost(_ post: Post){
        allPosts.append(post)
    }
    
    static func display(_ username: String){
        for postId in 0...allPosts.count-1{
            print("ID: \(postId+1)\n\(allPosts[postId].user.name)\t\tLikes:\(allPosts[postId].likes)\n\(allPosts[postId].user.information)\n\n\(allPosts[postId].message)")
            print(String(repeating: "-", count: 40))
        }
        print("1. Like")
        print("2. Go Back")
        let userInput = Int(readLine() ?? "0") ?? 0
        switch userInput{
        case 1:
            print("Enter id to like: ", terminator: "")
            let id = Int(readLine() ?? "0") ?? 0
            if likedUser.contains(username) {
                print("You already liked this post")
            }else{
                likePost(id: id, userName: username)
            }
            
        case 2:
            break
        default:
            print("Invalid Input")
        }
        
    }
    static func likePost(id: Int, userName: String){
        allPosts[id-1].likes+=1
        likedUser.append(userName)
    }
}
