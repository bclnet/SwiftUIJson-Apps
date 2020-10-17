//
//  ContentView.swift
//  UI Tests 10.15
//
//  Created by Sky Morey on 10/17/20.
//

import SwiftUI
import SwiftUIJson

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            //.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            ContentView()
        }
    }
}
