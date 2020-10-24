//
//  AppDelegate.swift
//  UI Tests 10.15
//
//  Created by Sky Morey on 10/17/20.
//

import Cocoa
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

// MARK: - Views:System
//typealias ContentView = Z01a_AnyView
//typealias ContentView = Z01a_ConditionalContent
//typealias ContentView = Z01a_Tree //: (Incomplete)
//typealias ContentView = Z01a_TupleView

// MARK: - Views
//typealias ContentView = Z01a_Divider
//typealias ContentView = Z01a_EmptyView
//typealias ContentView = Z01a_HStack
typealias ContentView = Z01a_Image
//typealias ContentView = Z01a_LazyHStack
//typealias ContentView = Z01a_LazyVStack
//typealias ContentView = Z01a_Spacer
//typealias ContentView = Z01a_Text //: (Incomplete)
//typealias ContentView = Z01a_VStack
//typealias ContentView = Z01a_ZStack

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = JsonPreview {
            ContentView()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)

        // Create the window and set the content view.
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.isReleasedWhenClosed = false
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}
