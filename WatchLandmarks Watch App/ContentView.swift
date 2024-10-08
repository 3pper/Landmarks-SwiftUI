//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Egor on 30.09.2024.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarkList()
                .task {
                    let center = UNUserNotificationCenter.current()
                    _ = try? await center.requestAuthorization(
                        options: [.alert, .sound, .badge]
                    )
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
