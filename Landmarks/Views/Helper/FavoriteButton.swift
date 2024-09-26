//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Egor on 26.09.2024.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toogle favorite", systemImage: isSet ? "star.fill": "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow: .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
