//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 04.08.2024.
//

import UIKit
import SnapKit
import Then

final class SecondaryButton : UIButton {

    // MARK: - Private UI elements
    private let mainLabel = UILabel().then {
        $0.text = "All Workouts"
        $0.textColor = R.color.tabbar_active_tint_color.callAsFunction()
        $0.font = R.font.helveticaLight.callAsFunction(size: 15)
        $0.textAlignment = .center
    }
    private let mainImageView = UIImageView().then {
        $0.contentMode = .scaleAspectFit
        $0.image = R.image.overview_custom_button_arrow_down_icon.callAsFunction()
    }

    // MARK: - Life cycle
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupButton()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        self.layer.cornerRadius = self.frame.height / 2.0
    }
}

// MARK: - Private setup methods
private extension SecondaryButton {

    func setupButton() {
        setupAddSubView()
        setupConstraints()
        setupSettingsView()
    }

    func setupAddSubView() {
        [mainLabel, mainImageView].forEach {
            addSubview($0)
        }
    }

    func setupConstraints() {
        mainLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().inset(10.0)
            $0.trailing.equalTo(mainImageView.snp.leading).inset(-10.0)
        }
        mainImageView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().inset(10.0)
            $0.width.equalTo(10.0)
            $0.height.equalTo(5.0)
        }
    }

    func setupSettingsView() {
        makeButtonAnimate(self)
        backgroundColor = R.color.overview_custom_button_background_color.callAsFunction()
    }
}
