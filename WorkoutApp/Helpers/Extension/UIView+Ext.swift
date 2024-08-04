//
//  UIView+Ext.swift
//  WorkoutApp
//
//  Created by Kirill Khomicevich on 10.07.2024.
//

import UIKit

extension UIView {

    func addBottomBorder(with color: UIColor, height: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect (x: 0,
                                  y: frame.height - height,
                                  width: frame.width,
                                  height: height)
        addSubview(separator)
    }

    func makeButtonAnimate(_ button: UIButton) {
        button.addTarget(self, action: #selector(handelIn), for: [
            .touchDown,
            .touchDragExit
        ])
    
        button.addTarget(self, action: #selector(handelOut), for:[
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }

    @objc func handelIn() {
        UIView.animate(withDuration: 0.15, animations: { self.alpha = 0.55 })
    }

    @objc func handelOut() {
        UIView.animate(withDuration: 0.15, animations: { self.alpha = 1.0 })

    }
}
