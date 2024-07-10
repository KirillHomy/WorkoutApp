//
//  SessionViewController.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 10.07.2024.
//

import UIKit

final class SessionViewController: GeneralViewController {

    // MARK: - Private variables

    // MARK: - Private UI elements

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
}

// MARK: - Interface methods
extension SessionViewController {
    
}

// MARK: - Private setup methods
private extension SessionViewController {

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
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Tabs.session.displayName
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton (at: .right, with: "Finish")
    }
}

// MARK: - Objc
@objc private extension SessionViewController {

}
