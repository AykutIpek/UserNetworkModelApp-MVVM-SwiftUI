//
//  UserModelAppApp.swift
//  UserModelApp
//
//  Created by aykut ipek on 4.10.2022.
//

import SwiftUI

@main
struct UserModelAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(userListViewModel: UserListViewModel(service: LocalService()))
        }
    }
}
