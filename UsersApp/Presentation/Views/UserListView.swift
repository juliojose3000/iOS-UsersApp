//
//  UserListView.swift
//  UsersApp
//
//  Created by Julio on 29/6/25.
//

import SwiftUI

struct UserListView: View {
    
    //@StateObject private var viewModel = UserListViewModel()
    /*private var viewModel: UserListViewModel
    
    init(viewModel: UserListViewModel) {
        self.viewModel = viewModel
    }*/
    
    @StateObject private var viewModel: UserListViewModel
    
    init(viewModel: UserListViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                HStack {
                    Text("\(user.name) \(user.lastname)").font(.headline)
                }
                .padding()
            }
            .navigationTitle("Users")
            .onAppear {
                viewModel.fetchUsers()
            }
            .alert(isPresented: Binding(get: {
                !viewModel.errorMessage.isEmpty
            }, set: { _ in })) {
                Alert(title: Text("Error"), message: Text(viewModel.errorMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
}


struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        let apiClient = ApiClient()
        let userRepository = UserRepositoryImpl(apiClient: apiClient)
        let getUsersUseCase = GetUsersUseCase(userRepository: userRepository)
        let viewModel = UserListViewModel(getUsersUseCase: getUsersUseCase)
        
        UserListView(viewModel: viewModel)
    }
}

