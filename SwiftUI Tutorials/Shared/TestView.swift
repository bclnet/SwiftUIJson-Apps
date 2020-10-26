//
//  TestView.swift
//  Shared
//
//  Created by Sky Morey on 10/11/20.
//

import SwiftUI
import SwiftUIJson

struct TestView: View {
    var body: some View {
        Text("Hello, world!")
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            TestView()
        }
    }
}
