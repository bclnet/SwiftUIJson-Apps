//
//  SwiftUI_TutorialsApp.swift
//  Shared
//
//  Created by Sky Morey on 10/11/20.
//

import SwiftUI
import SwiftUIJson

//typealias ContentView = A01b_ContentView
typealias ContentView = A04b_CircleImage

@main
struct SwiftUI_TutorialsApp: App {
    var body: some Scene {
        WindowGroup {
            JsonPreview {
                ContentView()
            }
        }
    }
}
