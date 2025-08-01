//
//  UserListViewModel.swift
//  UsersApp
//
//  Created by Julio on 29/6/25.
//

import Foundation
import Combine

class UserListViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var errorMessage: String = ""
    
    private var cancellables = Set<AnyCancellable>()
    private let getUsersUseCase: GetUsersUseCase
    
    init(getUsersUseCase: GetUsersUseCase) {
        self.getUsersUseCase = getUsersUseCase
    }
    
    func fetchUsers() {
        ApiClient.shared.fetchUsers { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let users):
                    self?.users = users
                case .failure(let error):
                    self?.errorMessage = "Failed to load users: \(error.localizedDescription)"
                }
            }
        }
    }
}

