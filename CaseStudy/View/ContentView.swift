//
//  ContentView.swift
//  CaseStudy
//
//  Created by Alperen KARACA on 4.03.2025.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var userListViewModel : UserListViewModel
    
    init () {
        self.userListViewModel = UserListViewModel()
    }
    
    var body: some View {
        NavigationView{
            List(userListViewModel.userList,id: \.id) { user in
                VStack{
                    Text(user.name)
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.yellow)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(user.email)
                        .bold()
                        .foregroundStyle(.gray)
                        .frame(maxWidth: .infinity , alignment: .leading)
                }
            }.task{
                await userListViewModel.downloadUsers()
            }
        }
    }
}

#Preview {
    ContentView()
}
