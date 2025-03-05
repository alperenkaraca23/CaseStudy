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
                NavigationLink(destination: DetailView(name: user.name, email: user.email, phone: user.phone, website: user.website)) {
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
                }

            }.navigationTitle("Contacts")
            .task{
                await userListViewModel.downloadUsers()
            }
        }
    }
}

#Preview {
    ContentView()
}
