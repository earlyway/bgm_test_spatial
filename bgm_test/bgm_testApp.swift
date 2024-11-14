//
//  bgm_testApp.swift
//  bgm_test
//
//  Created by Tium Solutions on 11/14/24.
//

import SwiftUI

@main
struct bgm_testApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            SpatialAudioView()
        }
        .windowStyle(.volumetric)
    }
}
