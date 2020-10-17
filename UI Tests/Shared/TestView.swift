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
        Text("Hello, world!")
            //.padding()
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            TestView()
        }
    }
}
