//
//  HomeViewController.swift
//  BookSalon
//
//  Created by Витя on 2/1/19.
//  Copyright © 2019 Victor. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    
    @IBAction func logOutAction(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
}
