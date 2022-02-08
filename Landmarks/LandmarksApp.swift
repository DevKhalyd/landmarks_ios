//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Rolando Garcia on 30/01/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    // Use the @StateObject attribute to initialize a model object for a given property
    // only once during the life time of the app
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
