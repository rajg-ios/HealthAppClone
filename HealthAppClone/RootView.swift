//
//  ContentView.swift
//  HealthAppClone
//
//  Created by Raj Gohil on 21/10/23.
//

import SwiftUI

struct RootView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        GeometryReader { geometry in
            TabView(selection: $selectedTab) {
                SummaryView()
                    .tabItem {
                        Image(systemName: "heart")
                        Text("Summary")
                    }
                    .onTapGesture(perform: SystemFunctionality.shared.enableHapticFeedback)
                    .tag(0)
                
                SharingView()
                    .font(.title)
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Sharing")
                    }
                    .onTapGesture(perform: SystemFunctionality.shared.enableHapticFeedback)
                    .tag(1)
                
                BrowseView()
                    .font(.title)
                    .tabItem {
                        Image(systemName: "app.fill")
                        Text("Browse")
                    }
                    .onTapGesture(perform: SystemFunctionality.shared.enableHapticFeedback)
                    .tag(2)
            }
        }
    }
}

#Preview {
    RootView()
}
