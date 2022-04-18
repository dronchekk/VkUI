//
//  VKUIApp.swift
//  VKUI
//
//  Created by Andrey Rachitskiy on 10.04.2022.
//

import SwiftUI

@main
struct VKUIApp: App {
    @State var isLogin: Bool = false

    init() {
        configureUiView()
    }

    var body: some Scene {
        WindowGroup {
            if isLogin {
                VkMainView()
            } else {
                VkLoginFromWebView(isLogin: $isLogin)
            }
        }
    }

    private func configureUiView() {
        let appearance = UINavigationBarAppearance()
        let navColor = Color("vkBgColor")

        appearance.backgroundColor = UIColor(navColor)

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().barTintColor = UIColor(navColor)
        UINavigationBar.appearance().backgroundColor = UIColor(navColor)
        UINavigationBar.appearance().tintColor = .white

        UITableView.appearance().backgroundColor = UIColor.clear
    }
}
