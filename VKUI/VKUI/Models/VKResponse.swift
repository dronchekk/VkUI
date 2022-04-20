//
//  VKResponse.swift
//  VKUI
//
//  Created by Andrey Rachitskiy on 11.04.2022.
//

struct VKResponse<T: Codable> {
    let response: T
}

extension VKResponse: Codable {
    enum CodingKeys: String, CodingKey {
        case response
    }
}
