//
//  ContentView.swift
//  Shared
//
//  Created by Sky Morey on 10/12/20.
//

import SwiftUI
import SwiftUIJson

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("largeTitle".var(self))
//        }
//        //.padding()
//    }
//}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            ContentView()
        }
    }
}
