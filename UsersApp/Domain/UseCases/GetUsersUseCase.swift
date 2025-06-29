//
//  GetUsersUseCase.swift
//  UsersApp
//
//  Created by Julio on 29/6/25.
//

class GetUsersUseCase {
    
    private let userRepository: UserRepository
    
    init(userRepository: UserRepository) {
        self.userRepository = userRepository
    }
    
    func execute(completion: @escaping (Result<[User], Error>) -> Void) {
        userRepository.fetchUsers(completion: completion)
    }
    
}
