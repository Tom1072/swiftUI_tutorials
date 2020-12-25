//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by  Tom 107 on 2020-12-20.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
