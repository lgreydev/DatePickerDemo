//
//  ViewController.swift
//  DatePickerDemo
//
//  Created by Sergey Lukaschuk on 26.05.2022.
//

import UIKit
import TinyConstraints

class ViewController: UIViewController {


    private lazy var textField: UITextField = {
        let textField = UITextField()
//        textField.inputView = datePicker
        textField.borderStyle = .line
        textField.height(50)
        return textField
    }()


    private lazy var datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = .date
        picker.tintColor = .systemMint
        picker.addTarget(self, action: #selector(dateChanged), for: .valueChanged)
        return picker
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.backgroundColor = .white

        addConstraints()
    }

    @objc func dateChanged() {
        textField.text = datePicker.date.formatted()
    }
}

private extension ViewController {
    func addConstraints() {

        view.addSubview(textField)
        textField.centerInSuperview()
        textField.leadingToSuperview(offset: 50)
        textField.trailingToSuperview(offset: 50)

        textField.addSubview(datePicker)
//        datePicker.bottomToSuperview(offset: -50)
        datePicker.centerXToSuperview()
        datePicker.centerYToSuperview()
    }
}
