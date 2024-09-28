//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by Egor on 28.09.2024.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRande: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("Username")
                Spacer()
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $profile.username)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notification")
            }
            Picker("Seosonal Photo", selection: $profile.seosonalPhoto) {
                ForEach(Profile.Season.allCases) { season in
                    Text(season.rawValue).tag(season)
                }
            }
            DatePicker(selection: $profile.goalDate, in: dateRande, displayedComponents: .date) {
                Text("Goal Date")
            }

        }
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
