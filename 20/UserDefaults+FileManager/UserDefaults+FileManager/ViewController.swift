//
//  ViewController.swift
//  UserDefaults+FileManager
//
//  Created by c94292a on 14/03/22.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        printUserDefaultValue()
    }
    
    private func printFileManagerValue(){
        
    }
    
    private func printUserDefaultValue(){
        
        print("USER DEFAULT VALUE!")
        
        let hasLaunchedBefore = UserDefaults.standard.bool(forKey: "hasLaunchedBefore")
        print("Has Launched Before:  \(hasLaunchedBefore)")
        
        let isNight = UserDefaults.standard.bool(forKey: "isNight") 
        print("Is Darkmode:  \(isNight)")
        
        guard let user = UserDefaults.standard.string(forKey: "user") else  { return }
        print("Current user:  \(user)")
        
        print("\n")
              
    }
}

