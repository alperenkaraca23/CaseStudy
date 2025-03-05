//
//  DetailView.swift
//  CaseStudy
//
//  Created by Alperen KARACA on 5.03.2025.
//

import SwiftUI

struct DetailView: View {
    
    var name , email , phone , website : String
    
    var body: some View {
        VStack{
            Text("\(name)")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundStyle(.yellow)
                .bold()
                .padding()
            Text("\(email)")
                .font(.title2)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.gray)
                .bold()
                .padding()
            Text("\(phone)")
                .frame(maxWidth: .infinity)
                .foregroundStyle(.blue)
                .bold()
                .padding()
            Text("\(website)")
                .frame(maxWidth: .infinity)
                .foregroundStyle(.green)
                .bold()
                .padding()
        }

    }
}

#Preview {
    DetailView(name: "Leanne Graham", email: "Sincere@april.biz", phone: "1-770-736-8031 x56442", website: "ildegard.org")
}

