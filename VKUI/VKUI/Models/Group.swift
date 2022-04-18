//
//  Group.swift
//  VKUI
//
//  Created by Andrey Rachitskiy on 12.04.2022.
//

import UIKit

struct GroupItems: Codable {
    var items: [Group]
}

struct Group: Codable, Identifiable {
    var id: Double
    var name: String
    var screenName: String
    var photo: String
    var description: String

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case screenName = "screen_name"
        case photo = "photo_50"
        case description
    }
}

extension Group {
    var photoUrl: URL? {
        URL(string: photo)
    }
}

#if DEBUG
    let groupDemoData = GroupItems(items: [
        Group(id: 1, name: "Swift", screenName: "", photo: "", description: "Swift - ios"),
        Group(id: 2, name: "Kotlin", screenName: "", photo: "", description: "Kotlin - android"),
    ])
#endif
