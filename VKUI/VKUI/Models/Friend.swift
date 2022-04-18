//
//  Friend.swift
//  VKUI
//
//  Created by Andrey Rachitskiy on 12.04.2022.
//

import Foundation

struct FriendItems: Codable {
    var items: [Friend]
}

struct Friend: Codable, Identifiable {
    var id: Double
    var firstName: String
    var lastName: String
    var nickName: String?
    var photo: String
    var domain: String?
    var sex: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case nickName = "nickname"
        case photo = "photo_100"
        case domain
        case sex
    }
}

extension Friend {
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

extension Friend {
    var photoUrl: URL? {
        URL(string: photo)
    }
}

#if DEBUG
    let friendDemoData = FriendItems(items: [
        Friend(id: 1, firstName: "Вася", lastName: "Пупкин", nickName: "vasya@", photo: ""),
        Friend(id: 2, firstName: "Andrew", lastName: "Swift", nickName: "AS@", photo: ""),
    ])
#endif
