//
//  NetworkService.swift
//  UserModelApp
//
//  Created by aykut ipek on 4.10.2022.
//

import Foundation

protocol NetworkService {
    func download(_ resource: String) async throws -> [User]
    var type : String { get }
}
