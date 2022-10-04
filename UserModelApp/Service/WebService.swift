//
//  WebService.swift
//  UserModelApp
//
//  Created by aykut ipek on 4.10.2022.
//

import Foundation

enum NetworkError : Error {
    case invalideUrl
    case invalideServerResponse
}

class WebService : NetworkService {
    
    var type: String = "Webservice"
    
    
    func download(_ resource: String) async throws -> [User] {
        
        guard let url = URL(string: resource) else {
            throw NetworkError.invalideUrl
        }
        
        let (data , response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse , httpResponse.statusCode == 200 else {
            
            throw NetworkError.invalideServerResponse
        
        
        }
        
        return try JSONDecoder().decode([User].self, from: data)
    }
}
