//
//  NetworkServiceProtocol.swift
//  VKUI
//
//  Created by Andrey Rachitskiy on 11.04.2022.
//

import Foundation

protocol NetworkServiceProtocol {
    func getFriends(completion: @escaping ([Friend]) -> Void)
    func getPhotos(ownerId: Int, completion: @escaping ([PhotoGallery]) -> Void)
    func getGroups(completion: @escaping ([Group]) -> Void)
    func searchGroups(query: String, completion: @escaping ([Group]) -> Void)
    func joinToGroup(groupId: Int, completion: @escaping (Int) -> Void)
    func leaveGroup(groupId: Int, completion: @escaping (Int) -> Void)
    func getNews(startFrom: String?, completion: @escaping (NewsResponse) -> Void)
}
