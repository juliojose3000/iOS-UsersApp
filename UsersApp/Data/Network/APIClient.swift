//
//  APIClient.swift
//  UsersApp
//
//  Created by Julio on 29/6/25.
//

import Foundation

class APIClient {
    static let shared = APIClient()
    private init() {}
    
    func fetchUsers(completion: @escaping (Result<[User], Error>) -> Void) {
        guard let url = URL(string: "https://backend-usershandlerapp.fly.dev/usershandlerapp/api/users/getAll") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "DataError", code: -1, userInfo: nil)))
                return
            }
            
            do {
                let users = try JSONDecoder().decode([User].self, from: data)
                completion(.success(users))
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
