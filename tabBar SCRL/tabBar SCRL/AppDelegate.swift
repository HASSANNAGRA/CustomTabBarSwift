//
//  AppDelegate.swift
//  tabBar SCRL
//
//  Created by Usman Mughal on 09/01/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 66)!], for: UIControl.State.normal)
//        if #available(iOS 15, *) {
//            let tabBarAppearance = UITabBarAppearance()
//            tabBarAppearance.backgroundColor = backgroundColor
//            tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: selectedItemTextColor, .font: UIFont(name: "American Typewriter", size: 20)]
//            tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: unselectedItemTextColor, .font: UIFont(name: "American Typewriter", size: 20)]
//            tabBar.standardAppearance = tabBarAppearance
//            tabBar.scrollEdgeAppearance = tabBarAppearance
       // }
        let appearance = UITabBarItem.appearance()
        let attributes = [NSAttributedString.Key.font:UIFont(name: "HelveticaNeue-Bold", size: 40)]
        appearance.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

