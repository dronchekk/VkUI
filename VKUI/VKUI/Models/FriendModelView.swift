//
//  FriendModelView.swift
//  VKUI
//
//  Created by Andrey Rachitskiy on 12.04.2022.
//

import Combine

class FriendModelView: ObservableObject {
    @Published var friends: [Friend] = []
    private let networkService = NetworkService()
    
    public func fetch() {
        networkService.getFriends { data in
            self.friends = data
        }
    }
}
