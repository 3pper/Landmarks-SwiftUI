//
//  NotificationView.swift
//  WatchLandmarks Watch App
//
//  Created by Egor on 30.09.2024.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?

    
    var body: some View {
        VStack {
            if let landmark {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Landmark")
            
            Divider()
            
            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
        }

    }
}

#Preview {
    NotificationView()
}

#Preview {
    NotificationView(
    title: "Notifcation",
    message: "Hello",
    landmark: ModelData().landmarks[0]
    )
}
