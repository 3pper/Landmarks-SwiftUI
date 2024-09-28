//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Egor on 28.09.2024.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                Text("Notification: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Seosonal photo: \(profile.seosonalPhoto.rawValue)")
                Text("Goal date: \(profile.goalDate, style: .date)")
                
                Divider()
                
                VStack {
                    Text("Completed Badges")
                        .font(.headline)
                    ScrollView {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .hueRotation(Angle(degrees: 45))
                                .grayscale(0.5)
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                Text("Resent Hikes")
                    .font(.headline)
                HikeView(hike: modelData.hikes[0])
            }
            
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
