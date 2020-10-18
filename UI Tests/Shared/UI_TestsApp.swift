//
//  UI_TestsApp.swift
//  Shared
//
//  Created by Sky Morey on 10/12/20.
//

import SwiftUI
import SwiftUIJson

//typealias ContentView = TestView

// MARK: - Modifiers
//typealias ContentView = Z01a_PaddingLayout

// MARK: - SwiftUI
//typealias ContentView = Z01a_AnyView
//typealias ContentView = Z01a_ConditionalContent
//typealias ContentView = Z01a_DynaType
typealias ContentView = Z01a_Font
//typealias ContentView = Z01a_Json

// MARK: - Views
//typealias ContentView = Z01a_Divider
//typealias ContentView = Z01a_EmptyView
//typealias ContentView = Z01a_HStack
//typealias ContentView = Z01a_LazyHStack
//typealias ContentView = Z01a_LazyVStack
//typealias ContentView = Z01a_Spacer
//typealias ContentView = Z01a_Text //: (Incomplete)
//typealias ContentView = Z01a_TupleView
//typealias ContentView = Z01a_VStack
//typealias ContentView = Z01a_ZStack

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
