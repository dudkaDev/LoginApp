//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Андрей Абакумов on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeUser
        makesLayerGradient()
    }
    private func makesLayerGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.cyan.cgColor,
            UIColor.orange.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
