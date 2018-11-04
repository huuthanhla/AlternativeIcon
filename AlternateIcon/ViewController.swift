//
//  ViewController.swift
//  AlternateIcon
//
//  Created by Thành Lã on 11/2/18.
//  Copyright © 2018 MonstarLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    enum AppIconName: String {
        case pikachu
        case pichu
        case raichu
    }
    
    @IBAction func pikachuButtonDidTap(_ sender: UIButton) {
        changeIcon(to: .pikachu)
    }
    
    @IBAction func pichuButtonDidTap(_ sender: UIButton) {
        changeIcon(to: .pichu)
    }
    
    @IBAction func raichuButtonDidTap(_ sender: UIButton) {
        changeIcon(to: .raichu)
    }
    
    func changeIcon(to iconName: AppIconName) {
        guard UIApplication.shared.supportsAlternateIcons else { return }
        UIApplication.shared.setAlternateIconName(iconName.rawValue)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
            self.dismiss(animated: true, completion: nil)
        }
    }
}

