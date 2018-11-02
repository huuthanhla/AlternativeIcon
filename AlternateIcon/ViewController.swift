//
//  ViewController.swift
//  AlternateIcon
//
//  Created by Thành Lã on 11/2/18.
//  Copyright © 2018 MonstarLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    // change app icon to "pikachu"
    @IBAction func pikachuButtonDidTap(_ sender: UIButton) {
        changeIcon(to: "pikachu")
    }
    
    // change app icon to "pichu"
    @IBAction func pichuButtonDidTap(_ sender: UIButton) {
        changeIcon(to: "pichu")
    }
    
    // change app icon to "raichu"
    @IBAction func raichuButtonDidTap(_ sender: UIButton) {
        changeIcon(to: "raichu")
    }
    
    func changeIcon(to iconName: String) {
        // 1
        guard UIApplication.shared.supportsAlternateIcons else { return }
                
        // 2
        UIApplication.shared.setAlternateIconName(iconName, completionHandler: { (error) in
            // 3
            if let error = error {
                print("App icon failed to change due to \(error.localizedDescription)")
            } else {
                print("App icon changed successfully")
            }
        })
    }

}

