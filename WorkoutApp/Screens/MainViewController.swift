//
//  MainViewController.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 09.07.2024.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - Private variables

    // MARK: - Private UI elements

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
}
// MARK: - Interface methods
extension MainViewController {
    
}

// MARK: - Private setup methods
private extension MainViewController {

    func setupView() {
        setupAddSubView()
        setupConstraints()
        setupNavigationController()
        setupSettingsView()
    }

    func setupAddSubView() {
        [].forEach {
            view.addSubview($0)
        }
    }

    func setupConstraints() {
        
    }

    func setupNavigationController() {
        guard let navigationController else { return }

        navigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.isTranslucent = true
        navigationController.navigationBar.tintColor = .white
    }

    func setupSettingsView() {
        
    }
}

// MARK: - Objc
@objc private extension MainViewController {

}
