//
//  OverviewViewController.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 09.07.2024.
//

import UIKit
import SnapKit
import Then

final class OverviewViewController: GeneralViewController {

    // MARK: - Private variables

    // MARK: - Private UI elements
    private let workoutButton = SecondaryButton()

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
        setupWorkoutButton()
    }

    func setupAddSubView() {
        [workoutButton].forEach {
            view.addSubview($0)
        }
    }

    func setupConstraints() {
        workoutButton.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.equalTo(130.0)
            $0.height.equalTo(28.0)
        }
    }

    func setupSettingsView() {
        title = "Overview"
        navigationController?.tabBarItem.title = Tabs.overview.displayName
    }

    func setupWorkoutButton() {
        workoutButton.addTarget(self, action: #selector(didTapWorkoutButton), for: .touchUpInside)
    }
}

// MARK: - Objc
@objc private extension OverviewViewController {

    func didTapWorkoutButton() {
        print("print didTapWorkoutButton")
    }
}
