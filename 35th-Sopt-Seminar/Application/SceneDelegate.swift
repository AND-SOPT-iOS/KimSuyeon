//
//  SceneDelegate.swift
//  35th-Sopt-Seminar
//
//  Created by 예삐 on 10/10/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController(rootViewController: MainViewController())
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
}
