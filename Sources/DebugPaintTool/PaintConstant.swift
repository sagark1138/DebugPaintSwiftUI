//
//  PaintConstant.swift
//  
//
//  Created by Sagar Kulkarni on 14/08/24.
//

import Foundation

/// Global paint settings.
public struct PaintConstant {
    
    /// Enables or disables painting.
    public static var shouldPaint: Bool = true
    
    /// Opacity of the background color.
    public static var colorOpacity: Double = 0.2
    
    /// Range of the background colors.
    public static var colorRange: ClosedRange<Int> = 0x111111...0xEEEEEE
}
