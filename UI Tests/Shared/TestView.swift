//
//  TestView.swift
//  Shared
//
//  Created by Sky Morey on 10/12/20.
//

import SwiftUI
import SwiftUIJson

//struct TestView: View {
//    var body: some View {
//        VStack {
//            Text("largeTitle".var(self))
//        }
//        //.padding()
//    }
//}

struct TestView: View {
    var body: some View {
//                Text("accessibilityAction(_:handler:)").accessibilityAction(.default) { print("handler") }
//                Text("accessibilityAction(named:handler:)").accessibilityAction(named: Text("name")) { print("handler") }
//
//                // MARK: - Accessibility:17362
//                //                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                Text("accessibilityAction(named:handler:)").accessibilityAction(named: "") { print("handler") }
//                Text("accessibilityAction(named:handler:)").accessibilityAction(named: String("")) { print("perform") }
//                //                }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            TestView()
        }
    }
}
