//
//  Badge.swift
//  Landmarks
//
//  Created by Egor on 27.09.2024.
//

import SwiftUI

struct Badge: View {
    var budgeSymbol: some View {
        ForEach (0..<8) { index in
            RotatedBudgeSymbol(
                angle:  .degrees(Double(index) / Double(8)) * 360.0
            )
        }
    }
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                budgeSymbol
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(
                        x: geometry.size.width / 2.0,
                        y: (3.0 / 4.0 ) * geometry.size.height
                    )
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
