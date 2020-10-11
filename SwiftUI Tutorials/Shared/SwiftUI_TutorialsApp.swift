//
//  SwiftUI_TutorialsApp.swift
//  Shared
//
//  Created by Sky Morey on 10/11/20.
//

import SwiftUI
import SwiftUIJson

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
