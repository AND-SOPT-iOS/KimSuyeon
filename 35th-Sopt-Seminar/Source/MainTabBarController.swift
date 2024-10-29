//
//  MainTabBarController.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/29/24.
//

import UIKit
import SnapKit
import Then

final class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTapBar()
    }
    
    private func setTapBar() {
        let todayViewController = TodayViewController().then {
            $0.tabBarItem.title = "투데이"
            $0.tabBarItem.image = UIImage(systemName: "doc.text.image")
        }
        
        let gameViewController = GameViewController().then {
            $0.tabBarItem.title = "게임"
            $0.tabBarItem.image = UIImage(systemName: "gamecontroller")
        }
        
        let appViewController = AppViewController().then {
            $0.tabBarItem.title = "앱"
            $0.tabBarItem.image = UIImage(systemName: "app.badge")
        }
        
        let arcadeViewController = ArcadeViewController().then {
            $0.tabBarItem.title = "Arcade"
            $0.tabBarItem.image = UIImage(systemName: "arcade.stick.console")
        }
        
        let searchViewController = SearchViewController().then {
            $0.tabBarItem.title = "검색"
            $0.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        }
        
        tabBar.unselectedItemTintColor = .systemGray3
        tabBar.tintColor = .systemBlue
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithTransparentBackground()
        tabBarAppearance.backgroundEffect = UIBlurEffect(style: .light)
        tabBarAppearance.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        tabBarAppearance.shadowColor = UIColor.systemGray4
        
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        let appNavigationController = UINavigationController(
            rootViewController: appViewController
        )
        
        viewControllers = [
            todayViewController,
            gameViewController,
            appNavigationController,
            arcadeViewController,
            searchViewController
        ]
    }
}
