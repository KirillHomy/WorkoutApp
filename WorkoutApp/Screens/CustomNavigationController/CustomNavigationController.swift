//
//  CustomNavigationController.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 10.07.2024.
//

import UIKit

enum NavBarPosition {
    case left, right
}

final class CustomNavigationController: UINavigationController {

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationController()
    }
}

// MARK: - Private setup methods
private extension CustomNavigationController {
    
    func setupNavigationController() {
        setupSettings()
    }

    func setupSettings() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = true
        navigationBar.standardAppearance.titleTextAttributes = [
            .font: R.font.helveticaBold.callAsFunction(size: 17.0) ?? .boldSystemFont(ofSize: 27.0),
            .foregroundColor: R.color.navigation_title_color.callAsFunction() as Any
        ]
        
        navigationBar.addBottomBorder(with: R.color.tabbar_separator_border_color.callAsFunction() ?? .gray,
                                      height: 1.0)
    }
}
