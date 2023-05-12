//
//  Post.swift
//  LinkedInPost
//
//  Created by ashwin-pt6735 on 10/02/23.
//

import Foundation

struct Post{
    
    let user: User
    var message: String
    
    var likes: Int = 0
    var comments: [String] = []
    

    
//    mutating func addLikes(){
//        
//        var totalLikes = likes
//        totalLikes += 1
//        likes = totalLikes
//    }
//    mutating func removeLikes(){
//        
//        var totalLikes = likes
//        if(totalLikes > 0){
//            totalLikes -= 1
//            likes = totalLikes
//        }
//        
//    }
//    
//    mutating func addComment(comment: String){
//        comments.append(comment)
//    }
    
}
