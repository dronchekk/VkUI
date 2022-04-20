//
//  AuthData.swift
//  VKUI
//
//  Created by Andrey Rachitskiy on 12.04.2022.
//

protocol AuthDataProtocol {
    var token: String { get set }
    var userId: Int { get set }
}

final class AuthData: AuthDataProtocol {
    var token = ""
    var userId = 0
    static let share = AuthData()
    private init() {}
}

