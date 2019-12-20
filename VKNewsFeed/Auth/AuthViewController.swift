//
//  AuthViewController.swift
//  VKNewsFeed
//
//  Created by Hasan Akniyev on 17.12.2019.
//  Copyright © 2019 Hasan Akniyev. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {
    
    private var authService: AuthService!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        authService = AppDelegate.shared().authService
    }
    
    @IBAction func signInTouch(_ sender: UIButton) {
        authService.wakeUpSession()
    }

}
