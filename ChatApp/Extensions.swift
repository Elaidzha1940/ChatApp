//  /*
//
//  Project: ChatApp
//  File: Extensions.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.08.2023
//
// Status: in progress | Decorated
//
//  */

import Foundation
import SwiftUI

// Extension for adding rounded corners to spesific corners

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

// Custom RoundedCorner shape used for cornerRadius extension above

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
