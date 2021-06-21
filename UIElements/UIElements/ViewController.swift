//
//  ViewController.swift
//  UIElements
//
//  Created by DCS on 20/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Welcome"
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.backgroundColor = UIColor.black
        return label
    }()
    
    private let myTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Name"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.cyan
        return textField
    }()
    
    private let myTextView:UITextView = {
        let textView = UITextView()
        textView.text = "Text View"
        textView.textAlignment = .center
        textView.backgroundColor = UIColor.gray
        return textView
    }()
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Part 1", for: .normal)
        button.addTarget(self, action: #selector(handleButtonClick), for: .touchUpInside)
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 6
        return button
    }()
    private let myDatePicker:UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .dateAndTime
        datePicker.timeZone = TimeZone(secondsFromGMT: 0)
        datePicker.addTarget(self, action: #selector(handleDateChange), for: .valueChanged)
        return datePicker
    }()
    
    private let myPageControl:UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3
        pageControl.backgroundColor  = UIColor.red
        pageControl.addTarget(self, action: #selector(handlePageControl), for: .valueChanged)
        return pageControl
    }()
    
    private let mySegmentedControl:UISegmentedControl = {
        let segControl = UISegmentedControl()
        segControl.insertSegment(withTitle: "Segment 1", at: 0, animated: true)
        segControl.insertSegment(withTitle: "Segment 2", at: 1, animated: true)
        segControl.insertSegment(withTitle: "Segment 3", at: 2, animated: true)
        segControl.selectedSegmentIndex = 0
        segControl.backgroundColor = UIColor.red
        segControl.addTarget(self, action: #selector(handleSegmentedControl), for: .valueChanged)
        return segControl
    }()
    private let mySlider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 20
        slider.addTarget(self, action: #selector(handleSlider), for: .valueChanged)
        return slider
    }()
    private let myStepper:UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 20
        stepper.addTarget(self, action: #selector(handleStepper), for: .valueChanged)
        return stepper
    }()
    
    private let mySwitch:UISwitch = {
        let switcher = UISwitch()
        switcher.addTarget(self, action: #selector(handleSwitch), for: .valueChanged)
        return switcher
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myLabel)
        view.addSubview(myTextField)
        view.addSubview(myTextView)
        view.addSubview(myButton)
        view.addSubview(myDatePicker)
        view.addSubview(myPageControl)
        view.addSubview(mySegmentedControl)
        view.addSubview(mySlider)
        view.addSubview(myStepper)
        view.addSubview(mySwitch)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 20, y: 80, width: view.width - 40, height: 40)
        myTextField.frame = CGRect(x: 20, y: myLabel.bottom + 20, width: view.width - 40, height: 40)
        myTextView.frame = CGRect(x: 20, y: myTextField.bottom + 20, width: view.width - 40, height: 40)
        myButton.frame = CGRect(x: 20, y: myTextView.bottom + 20, width: view.width - 40, height: 40)
        myDatePicker.frame = CGRect(x: 20, y: myButton.bottom + 20, width: view.width - 40, height: 40)
        myPageControl.frame = CGRect(x: 20, y: myDatePicker.bottom + 20, width: view.width - 40, height: 40)
        mySegmentedControl.frame = CGRect(x: 20, y: myPageControl.bottom + 20, width: view.width - 40, height: 40)
        mySlider.frame = CGRect(x: 20, y: mySegmentedControl.bottom + 20, width: view.width - 40, height: 40)
        myStepper.frame = CGRect(x: 20, y: mySlider.bottom + 20, width: view.width - 40, height: 40)
        mySwitch.frame = CGRect(x: 20, y: myStepper.bottom + 20, width: view.width - 40, height: 40)
    }
    @objc func handleButtonClick() {
        print("Opned")
        
        let vc = Part1()
        
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func handleDateChange() {
        print(myDatePicker.date)
    }
    
    @objc func handlePageControl() {
        print(myPageControl.currentPage)
    }
    
    @objc func handleSegmentedControl() {
        print(mySegmentedControl.selectedSegmentIndex)
    }
    
    @objc func handleSlider() {
        print(mySlider.value)
    }
    
    @objc func handleStepper() {
        print(myStepper.value)
    }
    
    @objc func handleSwitch() {
        print(mySwitch.isOn)
}
}
