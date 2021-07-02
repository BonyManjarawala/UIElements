//
//  loginVC.swift
//  UIELEMENTS
//
//  Created by DCS on 22/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class loginVC: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg1")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
}
