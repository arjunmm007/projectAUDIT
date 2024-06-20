//
//  SlinkyLines.swift
//  projectAUDIT
//
//  Created by Arjun Mehta on 6/17/24.
//

import SwiftUI

struct SlinkyLines: Shape {
    var time: Double
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let lineSpacing: CGFloat = (rect.width - 32) / 14 // Adjusted line spacing
        let lineHeight: CGFloat = 4 // Maintained line thickness
        let slinkyHeight: CGFloat = 40 // Maintained slinky height
        let verticalOffset: CGFloat = 200 // Maintained vertical offset
        let lineLength: CGFloat = 15 // Decreased line length
        
        // Sin wave lines
        for i in stride(from: lineSpacing / 2, through: rect.width - lineSpacing / 2, by: lineSpacing) {
            let y = rect.midY + sin((i + time) / 10) * slinkyHeight // Adjusted y coordinate
            let startY = rect.midY + verticalOffset // Apply vertical offset
            let endY = rect.midY + (lineLength * sin((i + time) / 10) * 6) + verticalOffset // Adjusted endY to increase line height
            
            path.move(to: CGPoint(x: i, y: startY))
            path.addLine(to: CGPoint(x: i, y: endY))
        }
        
        return path
    }
}

