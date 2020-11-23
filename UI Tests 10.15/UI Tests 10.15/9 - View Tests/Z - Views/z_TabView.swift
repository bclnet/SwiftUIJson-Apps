import SwiftUI
import SwiftUIJson

struct z_TabView: View {
    @State private var text = "text"
    @State private var value = 1
    var body: some View {
        VStack {
            Text("TabView")
            TabView { Text("content") }
            TabView<String, Text>(selection: nil) { Text("content") }
            TabView(selection: $text) { Text("content") }
            TabView(selection: $value) { Text("content") }
        }
    }
}

struct z_TabView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_TabView()
        }
    }
}
