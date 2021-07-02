//
//  final.swift
//  UIELEMENTS
//
//  Created by DCS on 22/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class final: UIViewController {

    
    private let smile : UIImageView = {
        let home = UIImageView()
        home.contentMode = .scaleAspectFit
        home.image = UIImage(named: "smile")
        return home
    }()
    private let username_lbl : UILabel = {
        let welcome = UILabel()
        welcome.text = "Registration Done SuccessFully !"
        welcome.textColor = .white
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(smile)
        view.addSubview(username_lbl)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
       // backgroundImage.image = UIImage(named: "bg15")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        smile.frame = CGRect(x: 20, y: 180, width: view.width - 40, height: 120)
        username_lbl.frame = CGRect(x: 20, y: smile.bottom + 10, width: view.width - 40, height: 150)
}
}
