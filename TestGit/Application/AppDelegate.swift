//
//  AppDelegate.swift
//  TestGit
//
//  Created by Игорь Дикань on 22.03.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupRootViewController()
        return true
    }

    func setupRootViewController() {
//        guard let vc = R.storyboard.splash.splashViewController() else {
//            return
//        }
        let storyboard = UIStoryboard(name: "Splash", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "SplashViewController") as? SplashViewController else {
            return
        }
        let navigation = UINavigationController(rootViewController: vc)
        navigation.isNavigationBarHidden = true
        navigation.navigationBar.tintColor = .black
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navigation
        window.makeKeyAndVisible()
        self.window = window
    }
}

