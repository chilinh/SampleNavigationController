//
//  BaseNavigationController.swift
//  SampleNavigationController
//
//  Created by Linh Nguyen on 10/5/17.
//  Copyright © 2017 MC. All rights reserved.
//

import Material

// Will be crashed if run on iOS 10 ???
//class BaseNavigationController: NavigationController {
class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        isMotionEnabled = true
    }
}
