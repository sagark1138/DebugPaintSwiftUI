//
//  View+DebugPaint.swift
//
//
//  Created by Sagar Kulkarni on 14/08/24.
//

#if canImport(SwiftUI)

import SwiftUI

extension View {
    /// Adds random background color with configurable opacity, and color range for checking view bounds.
    ///
    /// > Important: This is only available in debug builds.
    ///
    /// Example usage in SwiftUI views:
    ///
    /// ``` swift
    /// Text("Hello, World!")
    ///     .padding()
    ///     .debugPaint()
    /// ```
    ///
    /// Configure debug paint by configuring the following properties:
    ///
    /// - Use `PaintContant.shouldPaint` to enable or disable painting.
    /// - Use `PaintContant.colorOpacity` to set the opacity of the background color.
    /// - Use `PaintContant.colorRange` to set the range of the background colors.
    ///
    /// ``` swift
    /// PaintConstant.shouldPaint = true
    /// PaintConstant.colorOpacity = 0.5
    /// PaintConstant.colorRange = 0x111111...0xEEEEEE
    /// ```
    @ViewBuilder
    public func debugPaint() -> some View {
#if DEBUG
        if PaintConstant.shouldPaint {
            self.background (
                Color(hex: "\(Int.random(in: PaintConstant.colorRange))", opacity: PaintConstant.colorOpacity)
            )
        } else {
            self
        }
#else
        self
#endif
    }
}
#endif
