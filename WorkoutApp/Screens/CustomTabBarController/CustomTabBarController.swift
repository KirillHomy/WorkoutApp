//
//  CustomTabBarController.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 10.07.2024.
//

import UIKit

enum Tabs: String {
    case overview, session, progress, settings

    var displayName: String {
        return rawValue.capitalized
    }

    var index: Int {
        switch self {
        case .overview:
            return 0
        case .session:
            return 1
        case .progress:
            return 2
        case .settings:
            return 3
        }
    }
}

final class CustomTabBarController: UITabBarController {

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBarController()
    }
}

// MARK: - Private setup methods
private extension CustomTabBarController {
    
    func setupTabBarController() {
        setupTabBarColor()
        setupTabBar()
    }

    func setupTabBarColor() {
        tabBar.tintColor = R.color.tabbar_active_tint_color.callAsFunction()
        tabBar.barTintColor = R.color.tabbar_inactive_tint_color.callAsFunction()
        tabBar.backgroundColor = .white

        // Separation above tabbar
        tabBar.layer.borderColor = R.color.tabbar_separator_border_color.callAsFunction()?.cgColor
        tabBar.layer.borderWidth = 1.0
        tabBar.layer.masksToBounds = true
    }

    func setupTabBar() {
        let overviewViewController = OverviewViewController()
        let sessionViewController = SessionViewController()
        let progressViewController = ProgressViewController()
        let settingsViewController = SettingsViewController()

        // OverviewViewController
        overviewViewController.tabBarItem = UITabBarItem(title: Tabs.overview.displayName,
                                                         image: R.image.tabbar_overview_icon.callAsFunction(),
                                                         tag: Tabs.overview.index)

        // SessionViewController
        sessionViewController.tabBarItem = UITabBarItem(title: Tabs.session.displayName,
                                                         image: R.image.tabbar_session_icon.callAsFunction(),
                                                         tag: Tabs.session.index)

        // ProgressViewController
        progressViewController.tabBarItem = UITabBarItem(title: Tabs.progress.displayName,
                                                         image: R.image.tabbar_progress_icon.callAsFunction(),
                                                         tag: Tabs.progress.index)

        // SettingsViewController
        settingsViewController.tabBarItem = UITabBarItem(title: Tabs.settings.displayName,
                                                         image: R.image.tabbar_settings_icon.callAsFunction(),
                                                         tag: Tabs.settings.index)

        // All ViewController
        let controllerArray: [UIViewController] = [
            overviewViewController,
            sessionViewController,
            progressViewController,
            settingsViewController
        ]

        // Final
        viewControllers = controllerArray.map { CustomNavigationController(rootViewController: $0) }
    }
}
