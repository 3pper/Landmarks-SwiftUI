//
//  RotatedBudgeSymbol.swift
//  Landmarks
//
//  Created by Egor on 27.09.2024.
//

import SwiftUI

struct RotatedBudgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBudgeSymbol(angle: Angle(degrees: 5))
}
