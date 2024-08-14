//
//  Color+Hex.swift
//
//
//  Created by Sagar Kulkarni on 14/08/24.
//

import SwiftUI

extension Color {
    /// Create a color from a hex string.
    ///
    /// - Parameters:
    ///     -   hex: Color in the hex format.
    ///     -   opacity: The opacity of color.
    ///
    ///  Use color in the following way:
    ///
    ///  >Note: You can provide hex value with or without prefix `#`.
    ///
    ///  ``` swift
    ///     let color = Color(hex: "FF0000", opacity: 0.5)
    ///
    ///     let color = Color(hex: "#FF0000", opacity: 0.5)
    ///  ```
    init(hex: String, opacity: Double = 1) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue, opacity: opacity)
    }
}
