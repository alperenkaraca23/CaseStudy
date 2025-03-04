//
//  UserModel.swift
//  CaseStudy
//
//  Created by Alperen KARACA on 4.03.2025.
//

import Foundation

//UserModel

struct User : Codable {
    let id : Int
    let name , email , phone , website : String
}
