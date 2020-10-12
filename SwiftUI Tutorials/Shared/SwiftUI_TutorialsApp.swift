//
//  SwiftUI_TutorialsApp.swift
//  Shared
//
//  Created by Sky Morey on 10/11/20.
//

import SwiftUI
import SwiftUIJson

typealias TestView = A01b_ContentView

@main
struct SwiftUI_TutorialsApp: App {
    var body: some Scene {
        WindowGroup {
            JsonPreview {
                TestView()
                //ContentView()
            }
        }
    }
}
