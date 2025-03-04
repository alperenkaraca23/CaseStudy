//
//  UserViewModel.swift
//  CaseStudy
//
//  Created by Alperen KARACA on 4.03.2025.
//

import Foundation

class UserListViewModel : ObservableObject {
    
    @Published var userList = [UserViewModel]()
    
    let webservice = Webservice()
    
    func downloadUsers() async {
        do{
            let users = try await webservice.download("https://jsonplaceholder.typicode.com/users")
            DispatchQueue.main.async {
                self.userList = users.map(UserViewModel.init)
            }
        }
        catch {
            print(error.localizedDescription)
        }
    }
    
    
    
}


struct UserViewModel {
    let user : User
    
    var id : Int {
        user.id
    }
    
    var name : String {
        user.name
    }
    
    var email : String {
        user.email
    }
    
    var phone : String {
        user.phone
    }
    
    var website : String {
        user.website
    }
    
}
