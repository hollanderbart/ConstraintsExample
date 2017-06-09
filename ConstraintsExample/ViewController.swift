//
//  ViewController.swift
//  ConstraintsExample
//
//  Created by Bart den Hollander on 08/06/2017.
//  Copyright © 2017 Bart den Hollander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //TO-DO: Add navigation bar programatically, and add constraints to it with the 'button' view. Also add some buttons to it.
    
    let containerView: UIView = {
        return UIView()
    }()
    
    let corneredView1: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        view.clipsToBounds = true
        view.layer.cornerRadius = 5
        return view
    }()
    
    let corneredView2: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        view.clipsToBounds = true
        view.layer.cornerRadius = 5
        return view
    }()
    
    let navBar: UINavigationBar = {
        let navBar = UINavigationBar()
        navBar.pushItem(UINavigationItem(title: "Back"), animated: false)
        navBar.topItem?.title = "Hoi"
        return navBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        
        view.addSubview(containerView)
        containerView.addSubview(corneredView1)
        containerView.addSubview(corneredView2)
        containerView.addSubview(navBar)
        
        createContraints()
    }
    
    func createContraints() {
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 44).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        navBar.translatesAutoresizingMaskIntoConstraints = false
        navBar.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        navBar.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        navBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        navBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        corneredView1.translatesAutoresizingMaskIntoConstraints = false
        corneredView1.leadingAnchor.constraint(equalTo: containerView.layoutMarginsGuide.leadingAnchor).isActive = true
        corneredView1.topAnchor.constraint(equalTo: containerView.layoutMarginsGuide.topAnchor).isActive = true
        corneredView1.widthAnchor.constraint(equalToConstant: 50).isActive = true
        corneredView1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        corneredView2.translatesAutoresizingMaskIntoConstraints = false
        corneredView2.leadingAnchor.constraint(equalTo: corneredView1.trailingAnchor, constant: 10).isActive = true
        corneredView2.topAnchor.constraint(equalTo: corneredView1.topAnchor).isActive = true
        corneredView2.widthAnchor.constraint(equalToConstant: 50).isActive = true
        corneredView2.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }


}

