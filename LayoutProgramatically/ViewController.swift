//
//  ViewController.swift
//  LayoutProgramatically
//
//  Created by can.khac.nguyen on 2/20/19.
//  Copyright © 2019 can.khac.nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    weak var redView: UIView!
    weak var avatarImageView: UIImageView!
    weak var firstNameLabel: UILabel!
    weak var firstNameTextField: UITextField!

    override func loadView() {
        super.loadView()
        initAva()
        initTextField()
        initRedView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        avatarImageView.image = #imageLiteral(resourceName: "ava")
        firstNameLabel.text = "First name:"
        firstNameTextField.placeholder = "Type ur first name"
        redView.backgroundColor = .red
    }

    private func initAva() {
        let avatarImageView = UIImageView(frame: .zero)
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(avatarImageView)
        NSLayoutConstraint.activate([
                avatarImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
                avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                avatarImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
                avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor)
            ])
        self.avatarImageView = avatarImageView
    }

    private func initTextField() {
        let firstNameLabel = UILabel(frame: .zero)
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstNameLabel)
        NSLayoutConstraint.activate([
                firstNameLabel.leftAnchor.constraint(equalTo: avatarImageView.rightAnchor, constant: 20),
                firstNameLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
            ])
        firstNameLabel.setContentHuggingPriority(UILayoutPriority(999), for: .horizontal)
        self.firstNameLabel = firstNameLabel
        let firstNameTextField = UITextField(frame: .zero)
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstNameTextField)
        NSLayoutConstraint.activate([
                firstNameTextField.leftAnchor.constraint(equalTo: firstNameLabel.rightAnchor, constant: 10),
                firstNameTextField.centerYAnchor.constraint(equalTo: firstNameLabel.centerYAnchor),
                firstNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10)
            ])
        firstNameTextField.setContentHuggingPriority(UILayoutPriority(1), for: .horizontal)
        self.firstNameTextField = firstNameTextField
    }

    private func initRedView() {
        let redView = UIView(frame: .zero)
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.leftAnchor.constraint(equalTo: avatarImageView.leftAnchor),
            redView.rightAnchor.constraint(equalTo: firstNameTextField.rightAnchor),
            redView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 20),
            redView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
            ])
//        NSLayoutConstraint.activate([
//            NSLayoutConstraint(item: redView, attribute: .left, relatedBy: .equal,
//                               toItem: avatarImageView, attribute: .left, multiplier: 1, constant: 0),
//            NSLayoutConstraint(item: redView, attribute: .right, relatedBy: .equal,
//                               toItem: firstNameTextField, attribute: .right, multiplier: 1, constant: 0),
//            NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal,
//                               toItem: avatarImageView, attribute: .bottom, multiplier: 1, constant: 20),
//            NSLayoutConstraint(item: redView, attribute: .bottom, relatedBy: .equal,
//                               toItem: view, attribute: .bottom, multiplier: 1, constant: -20),
//            ])
        self.redView = redView
    }

    /*
     https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/VisualFormatLanguage.html#//apple_ref/doc/uid/TP40010853-CH27-SW1
     VFL = WTF?
    */
}

