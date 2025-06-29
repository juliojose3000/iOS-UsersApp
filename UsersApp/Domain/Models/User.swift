//
//  User.swift
//  UsersApp
//
//  Created by Julio on 29/6/25.
//

import Foundation

struct User: Identifiable, Decodable {
    var id: Int
    var name: String
    var lastname: String
    var age: Int
    var photoUrl: String
    var email: String
}
