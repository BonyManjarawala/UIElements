//
//  Part1.swift
//  UIElements
//
//  Created by DCS on 20/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation
import UIKit

class Part1: UIViewController {
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Activity Control", for: .normal)
        button.addTarget(self, action: #selector(handleActivity), for: .touchUpInside)
        button.backgroundColor = UIColor.green
        button.layer.cornerRadius = 6
        return button
    }()
    
    @objc func handleActivity() {
        DispatchQueue.main.async {
            self.myActivityIndicatorView.isHidden = !self.myActivityIndicatorView.isHidden
            self.myActivityIndicatorView.isHidden ? self.myActivityIndicatorView.stopAnimating() : self.myActivityIndicatorView.startAnimating()
        }
    }
    
    private let myActivityIndicatorView:UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView()
        activity.color = .blue
        return activity
    }()
    
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "wipro")
        return imageView
    }()
    
    private let myProgressView:UIProgressView = {
        let progressView = UIProgressView()
        progressView.setProgress(0.0, animated: true)
        return progressView
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 10.0) {
            self.myProgressView.setProgress(1.0, animated: true)
        }
    }
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Select Cars"
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.backgroundColor = UIColor.black
        return label
    }()
    private let myPickerView = UIPickerView()
    private let pickerData = ["Ford Raptor", "Maruti Swift", "Toyota Fortuner","Hyundai Venue"]
    
    private let part2Button:UIButton = {
        let button = UIButton()
        button.setTitle("Part 2", for: .normal)
        button.addTarget(self, action: #selector(goToPart2), for: .touchUpInside)
        button.backgroundColor = UIColor.gray
        button.layer.cornerRadius = 6
        return button
    }()
    
    @objc private func goToPart2() {
        let vc = Part2()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        nav.setNavigationBarHidden(true, animated: false)
        present(nav, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Part 2"
        view.backgroundColor = .white
        
        view.addSubview(myButton)
        view.addSubview(myActivityIndicatorView)
        view.addSubview(myImageView)
        view.addSubview(myProgressView)
            view.addSubview(myLabel)
        view.addSubview(myPickerView)
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
        view.addSubview(part2Button)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myButton.frame = CGRect(x: 20, y: 80, width: view.width - 40, height: 40)
        myActivityIndicatorView.frame = CGRect(x: 20, y: myButton.bottom + 20, width: view.width - 40, height: 40)
        myImageView.frame = CGRect(x: 20, y: myActivityIndicatorView.bottom + 20, width: view.width - 40, height: 80)
        myProgressView.frame = CGRect(x: 20, y: myImageView.bottom + 20, width: view.width - 40, height: 40)
        myLabel.frame = CGRect(x: 20, y: myProgressView.bottom + 20, width: view.width - 40, height: 40)
        myPickerView.frame = CGRect(x: 20, y: myLabel.bottom + 20, width: view.width - 40, height: 80)
        part2Button.frame = CGRect(x: 20, y: myPickerView.bottom + 20, width: view.width - 40, height: 40)
    }
}

extension Part1: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return   pickerData.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerData[row])
    }
}
