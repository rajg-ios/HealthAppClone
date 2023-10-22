//
//  SystemFunctionality.swift
//  HealthAppClone
//
//  Created by Raj Gohil on 21/10/23.
//

import SwiftUI

struct SystemFunctionality {
    static let shared = SystemFunctionality()

    private init() { }

    func enableHapticFeedback() {
        let impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        impactFeedbackGenerator.prepare()
        impactFeedbackGenerator.impactOccurred()
    }
}
