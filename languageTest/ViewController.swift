//
//  ViewController.swift
//  languageTest
//
//  Created by Andrey Kim on 12.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.text = "Главная".localized()
        secondLabel.text = "Введите номер телефона".localized()
        thirdLabel.text = "Введите ваше имя".localized()
        fourthLabel.text = "Введите ваше фамилия".localized()
        
        if firstLabel.text == "Главная" {
            print("ru")
        } else if firstLabel.text == "Бастасы" {
            print("kaz")
        } else {
            print("eng")
        }
    }
}

