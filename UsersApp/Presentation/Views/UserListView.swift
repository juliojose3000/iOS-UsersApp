//
//  UserListView.swift
//  UsersApp
//
//  Created by Julio on 29/6/25.
//

import SwiftUI

struct UserListView: View {
    @StateObject private var viewModel = UserListViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                HStack {
                    AsyncImage(url: URL(string: user.photoUrl)) { image in
                        image.resizable().scaledToFill().frame(width: 50, height: 50).clipShape(Circle())
                    } placeholder: {
                        ProgressView().progressViewStyle(CircularProgressViewStyle())
                    }
                    
                    VStack(alignment: .leading) {
                        Text("\(user.name) \(user.lastname)").font(.headline)
                        Text(user.email).font(.subheadline).foregroundColor(.gray)
                    }
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
        UserListView()
    }
}
