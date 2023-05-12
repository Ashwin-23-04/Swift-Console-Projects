//
//  main.swift
//  LinkedInPost
//
//  Created by ashwin-pt6735 on 10/02/23.
//


var run = true
var display: [Post] = []
var counter = 0

while(run){
    print("LinkedIn Model ")
    print("1. Login")
    print("2. Exit")
    print("Enter your choice : ", terminator: "")
    let choice = Int(readLine() ?? "0") ?? 0
    
    switch choice{
    case 1:
        print("LinkedIn Login\n")
        print("Enter LinkedIn Username : ",terminator: "")
        let username = readLine() ?? ""
        print("Enter LinkedIn Password : ",terminator: "")
        let password = readLine() ?? ""
        
        let login = Login(username: username, password: password)
        if login.result{
            while run{
                print("1. Add post \n")
                print("2. Display post\n")
                print("3. Sign out \n")
                print("Enter choice : ",terminator: "")
                let userInput = Int(readLine() ?? "0") ?? 0
                print(userInput)
                switch userInput{
                case 1:
                    print("Enter msg to post")
                    let msg = readLine() ?? ""
                    for var user in login.users{
                        if user.name == login.username{
                            user.addPost(post: Post(user: user, message: msg))
                        }
                    }
                case 2:
                    
                    HomePage.display(username)
                case 3:
                    run = false
                    print("Signing out...")
                default:
                    print("Invalid Input")
                }
            }
            run = true
        }else{
            print("Invalid Login Credentials!")
        }
    case 2:
        run = false
        print("Exitted")
    default:
        print("Invalid choice")
    }
}
