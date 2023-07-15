//
//  ViewController.swift
//  ExCustomIndicator
//
//  Created by 김종권 on 2023/07/15.
//

import UIKit

class ViewController: UIViewController {
    private let loadingImageView = UIImageView(image: UIImage(named: "loading"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loadingImageView)
        loadingImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loadingImageView.heightAnchor.constraint(equalToConstant: 20),
            loadingImageView.widthAnchor.constraint(equalToConstant: 20),
            loadingImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loadingImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        animate()
    }

    private func animate() {
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
         rotationAnimation.fromValue = 0
         rotationAnimation.toValue = CGFloat.pi * 2
         rotationAnimation.duration = 1.0
         rotationAnimation.repeatCount = Float.infinity
        
        loadingImageView.layer.add(rotationAnimation, forKey: "rotation_animation")
    }
}
