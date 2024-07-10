//
//  SettingsViewController.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 10.07.2024.
//

import UIKit

final class SettingsViewController: GeneralViewController {

    // MARK: - Private variables

    // MARK: - Private UI elements

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
}

// MARK: - Interface methods
extension SettingsViewController {
    
}

// MARK: - Private setup methods
private extension SettingsViewController {

    func setupView() {
        setupAddSubView()
        setupConstraints()
        setupSettingsView()
    }

    func setupAddSubView() {
        [].forEach {
            view.addSubview($0)
        }
    }

    func setupConstraints() {
        
    }

    func setupSettingsView() {
        title = "Settings"
        navigationController?.tabBarItem.title = Tabs.settings.displayName
    }
}

// MARK: - Objc
@objc private extension SettingsViewController {

}
