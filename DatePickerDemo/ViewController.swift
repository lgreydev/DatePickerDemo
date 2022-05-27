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
        textField.borderStyle = .line
        textField.height(50)
        textField.textAlignment = .center
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

        view.backgroundColor = .white

        textField.text = datePicker.date.formatted(date: .long, time: .omitted)

        addConstraints()
    }

    @objc func dateChanged() {
        textField.text = datePicker.date.formatted(date: .long, time: .omitted)
    }
}

private extension ViewController {
    func addConstraints() {
        view.addSubview(textField)
        textField.centerXToSuperview()
        textField.centerYToSuperview(offset: -50)
        textField.leadingToSuperview(offset: 50)
        textField.trailingToSuperview(offset: 50)

        view.addSubview(datePicker)
        datePicker.centerXToSuperview()
        datePicker.bottomToSuperview(offset: -50)
    }
}
