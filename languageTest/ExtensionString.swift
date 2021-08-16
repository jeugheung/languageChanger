//
//  ExtensionString.swift
//  languageTest
//
//  Created by Andrey Kim on 12.08.2021.
//

import Foundation


let userDefaults = UserDefaults.standard

extension String {
    func localized() -> String {
        let language = UserManager.getCurrentLanguage()
        if let url = Bundle.main.url(forResource: "\(language)", withExtension: "strings"), let stringDict = NSDictionary(contentsOf: url) as? [String: String], let localizedString = stringDict[self] {
            return localizedString
        }

        return self
    }
}

class UserManager {
    static func getCurrentLanguage() -> String {
        guard let language = userDefaults.object(forKey: Key.currentLanguage) as? String else {
            return "RUS"
        }
        return language
    }
    static func setCurrentLanguage(keyOfLanguage: String) -> Void{
        userDefaults.set(keyOfLanguage, forKey: Key.currentLanguage)
        userDefaults.synchronize()
    }
    
}

struct Key {
    static let currentLanguage = "currentLanguage"
}

