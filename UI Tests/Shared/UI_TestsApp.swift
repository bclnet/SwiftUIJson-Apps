//
//  UI_TestsApp.swift
//  Shared
//
//  Created by Sky Morey on 10/12/20.
//

import SwiftUI
import SwiftUIJson

typealias TestView = Z01a_Text

@main
struct UI_TestsApp: App {
    var body: some Scene {
        WindowGroup {
            JsonPreview {
                TestView()
                //ContentView()
            }
        }
    }
}
