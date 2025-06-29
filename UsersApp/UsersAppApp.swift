//
//  UsersAppApp.swift
//  UsersApp
//
//  Created by Julio on 29/6/25.
//

import SwiftUI

@main
struct UserListApp: App {
    var body: some Scene {
        WindowGroup {
            let apiClient = ApiClient()
            let userRepository = UserRepositoryImpl(apiClient: apiClient)
            let getUsersUseCase = GetUsersUseCase(userRepository: userRepository)
            let viewModel = UserListViewModel(getUsersUseCase: getUsersUseCase)
            
            UserListView(viewModel: viewModel)
            
        }
    }
}
