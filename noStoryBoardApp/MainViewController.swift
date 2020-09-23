//
//  ViewController.swift
//  noStoryBoardApp
//
//  Created by Caleb Maccarone on 9/23/20.
//  Copyright © 2020 Caleb Maccarone. All rights reserved.
//

import UIKit
import MapKit

class MainViewController: UIViewController {

    var nameTextField: UITextField!
    var passwordTextField: UITextField!
    var titleLabel: UILabel!
    var loginButton: UIButton!
    var mapView: MKMapView = MKMapView.init(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setupViews()
        constraintsInit()
    }

    
    func setupViews(){
        nameTextField = UITextField(frame: .zero)
        nameTextField.placeholder = "Login Name"
        nameTextField.borderStyle = .roundedRect
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameTextField)
        passwordTextField = UITextField(frame: .zero)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.backgroundColor = .blue
        loginButton.tintColor = .white
        titleLabel = UILabel()
        titleLabel.text = "this is my first No Story Board APP!!"
        titleLabel.textColor = .black
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)
        view.addSubview(loginButton)
        view.addSubview(titleLabel)
        
        loginButton.addTarget(self,
        action: #selector(handleLoginTouchUpInside),
        for: .touchUpInside)
        
    }
    
    func constraintsInit() {
        
        NSLayoutConstraint.activate([
          loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
          titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          passwordTextField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20),
          passwordTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
          passwordTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
          nameTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20),
          nameTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
          nameTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20)
      
        ])
    }
    
    @objc func handleLoginTouchUpInside() {
      print("Login has been tapped")
      if nameTextField.isFirstResponder {
        nameTextField.resignFirstResponder()
      }
      if passwordTextField.isFirstResponder {
        passwordTextField.resignFirstResponder()
      }
    }

}

