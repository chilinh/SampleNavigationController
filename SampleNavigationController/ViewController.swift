//
//  ViewController.swift
//  SampleNavigationController
//
//  Created by Linh Nguyen on 10/5/17.
//  Copyright © 2017 MC. All rights reserved.
//

import UIKit
import Material

class ViewController: UIViewController {
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
        tabBarItem.image = Icon.cm.menu
        tabBarItem.selectedImage = Icon.cm.menu?.tint(with: UIColor.blue)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = Color.white
        
        navigationItem.title = "Root"
        
        let button = FlatButton(title: "Push child view controller")
        button.addTarget(self, action: #selector(buttonDidPress(_:)), for: .touchUpInside)
        button.sizeToFit()
        
        view.layout(button).center()
    }
    
    @objc func buttonDidPress(_ sender: Any?) {
        let child = ChildViewController()
        child.hidesBottomBarWhenPushed = true
        
        navigationController?.motionNavigationTransitionType = .autoReverse(presenting: .fade)
        navigationController?.pushViewController(child, animated: true)
    }

}

