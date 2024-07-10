//
//  ProgressViewController.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 10.07.2024.
//

import UIKit

final class ProgressViewController: GeneralViewController {

    // MARK: - Private variables

    // MARK: - Private UI elements

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    override func navBarLeftButtonHandler() {
        print("print ProgressViewController navBarLeftButtonHandler")
    }

    override func navBarRightButtonHandler() {
        print("print ProgressViewController navBarRightButtonHandler")
    }
}

// MARK: - Interface methods
extension ProgressViewController {
    
}

// MARK: - Private setup methods
private extension ProgressViewController {

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
        title = "Workout Progress"
        navigationController?.tabBarItem.title = Tabs.progress.displayName
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton (at: .right, with: "Details")
    }
}

// MARK: - Objc
@objc private extension ProgressViewController {

}
