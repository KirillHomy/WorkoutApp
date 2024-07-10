//
//  OverviewViewController.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 09.07.2024.
//

import UIKit

final class OverviewViewController: GeneralViewController {

    // MARK: - Private variables

    // MARK: - Private UI elements

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
}

// MARK: - Interface methods
extension OverviewViewController {
    
}

// MARK: - Private setup methods
private extension OverviewViewController {

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
        title = "Overview"
        navigationController?.tabBarItem.title = Tabs.overview.displayName
    }
}

// MARK: - Objc
@objc private extension OverviewViewController {

}
