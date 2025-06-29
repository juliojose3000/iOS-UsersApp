//
//  UserRepository.swift
//  UsersApp
//
//  Created by Julio on 29/6/25.
//

protocol UserRepository {
    func fetchUsers(completion: @escaping (Result<[User], Error>) -> Void)
}

class UserRepositoryImpl: UserRepository {
    
    private let apiClient: ApiClient
    
    init(apiClient: ApiClient) {
        self.apiClient = apiClient
    }
    
    func fetchUsers(completion: @escaping (Result<[User], Error>) -> Void) {
        apiClient.fetchUsers(completion: completion)
    }
    
}
