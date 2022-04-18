//
//  AppDelegate.swift
//  VKUI
//
//  Created by Andrey Rachitskiy on 16.04.2022.
//

import SwiftUI

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let appearance = UINavigationBarAppearance()
        let navColor = Color("vkBgColor")
        
        appearance.backgroundColor = UIColor(navColor)
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().barTintColor = UIColor(navColor)
        UINavigationBar.appearance().backgroundColor = UIColor(navColor)
        UINavigationBar.appearance().tintColor = .white
        
        UITableView.appearance().backgroundColor = UIColor.clear
        
        let tabBArAppearance = UITabBar.appearance()
        tabBArAppearance.barTintColor = UIColor(navColor)
        tabBArAppearance.backgroundColor = UIColor(navColor)
        tabBArAppearance.tintColor = .white
        tabBArAppearance.unselectedItemTintColor = .lightGray
        return true
    }
}
