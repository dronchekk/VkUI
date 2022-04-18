//
//  VKUIApp.swift
//  VKUI
//
//  Created by Andrey Rachitskiy on 10.04.2022.
//

import SwiftUI

@main
struct VKUIApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    @State var isLogin: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isLogin {
                VkMainView()
            } else {
                VkLoginFromWebView(isLogin: $isLogin)
            }
        }
    }
}
