//
//  Theme.swift
//  DebugSwift
//
//  Created by Mochamad Rakha Luthfi Fahsya on 26/01/24.
//

import UIKit

public enum Appearance {
    case dark
    case light
}

class Theme {
    static var shared = Theme()

    var interfaceStyleColor: UIColor = .black
    var backgroundColor: UIColor = .black
    var fontColor: UIColor = .white
    var statusFetchColor: UIColor = .green
    var appearance: Appearance = .light

    func setupInterfaceStyle() {
        interfaceStyleColor = appearance == .dark ? .black : .white
    }

    func setupBackgroundColor() {
        backgroundColor = appearance == .dark ? .black : .white
    }

    func setupFontColor() {
        fontColor = appearance == .dark ? .white : .black
    }

    func setupStatusFetchColor() {
        statusFetchColor = appearance == .dark ? .green : UIColor(hexString: "#32CD32") ?? .green
    }

    func setAppearance(appearance: Appearance?) {
        let defaultAppearance = appearance
        self.appearance = defaultAppearance == .dark ? .dark : .light
        setupInterfaceStyle()
        setupBackgroundColor()
        setupFontColor()
        setupStatusFetchColor()
    }
}
