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
    
    let corneredView1: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        view.clipsToBounds = true
        UIViewPropertyAnimator(duration: 1, curve: .linear, animations: {
            view.layer.cornerRadius = 5
        }).startAnimation()
        view.layer.cornerRadius = 5
        return view
    }()
    
    let corneredView2: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        view.clipsToBounds = true
        UIViewPropertyAnimator(duration: 1, curve: .linear, animations: {
            view.layer.cornerRadius = 5
        }).startAnimation()
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
        
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        view.addSubview(corneredView1)
        view.addSubview(corneredView2)
        view.addSubview(navBar)
        
        createContraints()
    }
    
    func createContraints() {
        
        navBar.translatesAutoresizingMaskIntoConstraints = false
        navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        navBar.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        
        corneredView1.translatesAutoresizingMaskIntoConstraints = false
        corneredView1.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        corneredView1.topAnchor.constraint(equalTo: navBar.bottomAnchor).isActive = true
        corneredView1.widthAnchor.constraint(equalToConstant: 50).isActive = true
        corneredView1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        corneredView2.translatesAutoresizingMaskIntoConstraints = false
        corneredView2.leadingAnchor.constraint(equalTo: corneredView1.trailingAnchor, constant: 10).isActive = true
        corneredView2.topAnchor.constraint(equalTo: corneredView1.topAnchor, constant: 25).isActive = true
        corneredView2.widthAnchor.constraint(equalToConstant: 50).isActive = true
        corneredView2.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }


}

