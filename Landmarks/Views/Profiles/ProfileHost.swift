//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Egor on 28.09.2024.
//

import SwiftUI

struct ProfileHost: View {
    
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
        
    }
}

#Preview {
    ProfileHost()
}
