//
//  RaisesTabBar.swift
//  tabBar SCRL
//
//  Created by Usman Mughal on 10/01/2023.
//

import Foundation
import UIKit
class tbbr: UITabBarController {
    
    let button = UIButton.init(type: .custom)
    override func viewDidLoad() {
        super.viewDidLoad()
        scrlTabUi()
        customFonts()
    }
        override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRect.init(x: self.tabBar.center.x - 32, y: self.view.bounds.height - 90, width: 64, height: 64)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func scrlTabUi() {
        button.setImage(UIImage(named: "iconTbBr"), for: .normal)
        button.currentImage?.withTintColor(UIColor.white, renderingMode: .alwaysTemplate)
        button.backgroundColor = UIColor(red: 0.937, green: 0.365, blue: 0.659, alpha: 1)
        button.layer.cornerRadius = 32
        self.view.insertSubview(button, aboveSubview: self.tabBar)
        let action = #selector(tbbr.centerBtnAction)
        button.addTarget(self, action: action, for: .touchUpInside)
    }
    func customFonts() {
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        tabBarAppearance.shadowImage = UIImage()
        tabBarAppearance.backgroundImage = UIImage()
        tabBarAppearance.selectionIndicatorTintColor = UIColor.white
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.font: UIFont(name: "HelveticaNeue-Bold", size: 12) ?? UIFont.self]
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.font: UIFont(name: "HelveticaNeue-Bold", size: 12) ?? UIFont.self]
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
    @objc func centerBtnAction(_ sender:UIButton?) {
        
    }
}
class CustomTabBar: UITabBar {
    let height: CGFloat = 92
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        guard let window = UIApplication.shared.connectedScenes
                .filter({$0.activationState == .foregroundActive})
                .map({$0 as? UIWindowScene})
                .compactMap({$0})
                .first?.windows
                .filter({$0.isKeyWindow}).first else {
            return super.sizeThatFits(size)
        }

        var sizeThatFits = super.sizeThatFits(size)
        if #available(iOS 11.0, *) {
            sizeThatFits.height = height + window.safeAreaInsets.bottom
            self.backgroundColor = UIColor.clear
        } else {
            sizeThatFits.height = height
        }
        return sizeThatFits
    }
}
