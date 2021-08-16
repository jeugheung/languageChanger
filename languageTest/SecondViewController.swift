//
//  SecondViewController.swift
//  languageTest
//
//  Created by Andrey Kim on 12.08.2021.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var fiveLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.value(forKey: Key.currentLanguage) as! String == "RUS" {
            segmentedControl.selectedSegmentIndex = 1
        }
        if UserDefaults.standard.value(forKey: Key.currentLanguage) as! String == "ENG" {
            segmentedControl.selectedSegmentIndex = 2
        }
        
        
        fiveLabel.text = "Русский".localized()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        changeLanguage(forIndex: segmentedControl.selectedSegmentIndex)
    }
    
    private func changeLanguage(forIndex index: Int) -> Void {
        if index == 1 {
            UserDefaults.standard.setValue("RUS", forKey: Key.currentLanguage)
        } else if index == 2 {
            UserDefaults.standard.setValue("ENG", forKey: Key.currentLanguage)
        } else {
            UserDefaults.standard.setValue("KAZ", forKey: Key.currentLanguage)
        }
        reloadApp()
    }

    func reloadApp() {
//        UIApplication.shared.keyWindow?.rootViewController = storyboard!.instantiateViewController(withIdentifier: "Main")
        UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController = storyboard!.instantiateViewController(withIdentifier: "Main")
    }
}
