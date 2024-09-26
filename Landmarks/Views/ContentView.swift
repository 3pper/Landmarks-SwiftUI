//
//  ContentView.swift
//  Landmarks
//
//  Created by Egor on 25.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
