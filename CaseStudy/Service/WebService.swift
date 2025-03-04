//
//  WebService.swift
//  CaseStudy
//
//  Created by Alperen KARACA on 4.03.2025.
//

import Foundation

class Webservice {
    
    func download(_ resource : String) async throws -> [User] {
        guard let url  = URL(string: resource) else {
            throw ServiceError.invalidURL
        }
        let (data , response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse , httpResponse.statusCode == 200 else {
            throw ServiceError.invalidResponse
        }
        return try JSONDecoder().decode([User].self, from: data)
    }
    
}

enum ServiceError : Error {
    case invalidURL
    case invalidResponse
    
}
