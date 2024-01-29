//
//  MyTabBar.swift
//  tabBar SCRL
//
//  Created by Usman Mughal on 11/01/2023.
//

import UIKit

class SCRLtabBar:UITabBarController {
    
    let shadowView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        shadowOfCenter()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarConsistancy()
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        tabBarConsistancy()
      }
    override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    shadowView.frame = CGRect.init(x: self.tabBar.center.x - 36, y: self.tabBar.center.y - 50, width: 74, height: 81)
}
    func tabBarConsistancy() {
        self.tabBar.barTintColor = UIColor.clear
        self.tabBar.unselectedItemTintColor = UIColor.darkGray
        self.tabBar.tintColor = UIColor.white
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithTransparentBackground()
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.font: UIFont(name: "HelveticaNeue-Bold", size: 12) ?? UIFont.self]
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.font: UIFont(name: "HelveticaNeue-Bold", size: 12) ?? UIFont.self]
    }
    func shadowOfCenter () {
        shadowView.image = UIImage(named: "shadowTabBar")
        shadowView.contentMode = .scaleAspectFill
        self.view.insertSubview(shadowView, aboveSubview: self.tabBar)
    }
}
private class LocalBundle {}
extension Bundle {
    static let resourceBundle: Bundle = {
#if SWIFT_PACKAGE
        return .module
#else
        return Bundle(for: LocalBundle.self)
#endif
    }()
}
