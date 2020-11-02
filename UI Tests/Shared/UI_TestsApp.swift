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
//typealias ContentView = _DynaType
//typealias ContentView = Z01a_Color
//typealias ContentView = Z01a_Edge //: (Incomplete)
//typealias ContentView = Z01a_Font
//typealias ContentView = Z01a_Json //: (Incomplete)
typealias ContentView = Z01a_View17175 //: (Incomplete)
//typealias ContentView = Z01a_View18000 //: (Incomplete)
//typealias ContentView = Z01a_View19000 //: (Incomplete)
//typealias ContentView = Z01a_View20000 //: (Incomplete)
//typealias ContentView = Z01a_View21000 //: (Incomplete)

// MARK: - Views:System
//typealias ContentView = Z01a_AnyView
//typealias ContentView = Z01a_ConditionalContent
//typealias ContentView = Z01a_Tree //: (Incomplete)
//typealias ContentView = Z01a_TupleView

// MARK: - Views
//typealias ContentView = Z01a_Divider
//typealias ContentView = Z01a_EmptyView
//typealias ContentView = Z01a_HStack
//typealias ContentView = Z01a_Image
//typealias ContentView = Z01a_LazyHStack
//typealias ContentView = Z01a_LazyVStack
//typealias ContentView = Z01a_Spacer
//typealias ContentView = Z01a_Text //: (Incomplete)
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
