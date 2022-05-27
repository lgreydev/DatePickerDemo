//
//  ViewController.swift
//  DatePickerDemo
//
//  Created by Sergey Lukaschuk on 26.05.2022.
//

import UIKit

class ViewController: UIViewController {

    private lazy var datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.locale = .current
        picker.datePickerMode = .dateAndTime
        picker.preferredDatePickerStyle = .compact
        picker.tintColor = .systemMint
        return picker
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.backgroundColor = .white

        view.addSubview(datePicker)
        datePicker.center = view.center

    }


}

