//
//  GeneralViewController.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 10.07.2024.
//

import UIKit

class GeneralViewController: UIViewController {
    
    // MARK: - Private variables
    
    // MARK: - Private UI elements
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupGeneralView()
    }
}

// MARK: - Interface methods
extension GeneralViewController {

    func addNavBarButton(at position: NavBarPosition, with title: String) {

        let button = UIButton (type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.color.tabbar_active_tint_color.callAsFunction(), for: .normal)
        button.setTitleColor(R.color.tabbar_inactive_tint_color.callAsFunction(), for: .disabled)
        button.titleLabel?.font = R.font.helveticaBold.callAsFunction(size: 14.0)
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }

    @objc func navBarLeftButtonHandler() {
        print("print navBarLeftButtonHandler")
    }

    @objc func navBarRightButtonHandler() {
        print("print navBarRightButtonHandler")
    }
}

// MARK: - Private setup methods
private extension GeneralViewController {
    
    func setupGeneralView() {
        setupSettingsView()
    }


    func setupSettingsView() {
        view.backgroundColor = R.color.general_main_background_color.callAsFunction()
    }
}

// MARK: - Objc
@objc private extension GeneralViewController {
    
}

