//
//  SwiftUI_TutorialsApp.swift
//  Shared
//
//  Created by Sky Morey on 10/11/20.
//

import SwiftUI
import SwiftUIJson

//typealias ContentView = A01a_ContentView
//typealias ContentView = A01b_ContentView
//typealias ContentView = A05_MapView
//typealias ContentView = A06c_ContentView
//typealias ContentView = A06g_ContentView
typealias ContentView = B03b_LandmarkRow
//typealias ContentView = B03c_LandmarkRow

@main
struct SwiftUI_TutorialsApp: App {
    var body: some Scene {
        WindowGroup {
            JsonPreview {
//                ContentView()
                ContentView(landmark: landmarkData[1])
                    .previewLayout(.fixed(width: 300, height: 70))
            }
        }
    }
}
