//
//  UITestsApp.swift
//  Shared
//
//  Created by Sky Morey on 10/11/20.
//

import SwiftUI
import SwiftUIJson

@main
struct UI_TestsApp: App {
    var body: some Scene {
        WindowGroup {
            JsonPreview {
                ContentView()
            }
        }
    }
}
