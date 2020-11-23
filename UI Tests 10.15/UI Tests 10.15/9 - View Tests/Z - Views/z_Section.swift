import SwiftUI
import SwiftUIJson

struct z_Section: View {
    var body: some View {
        VStack {
            Text("Section")
            Section { Text("content") }
            Section(header: Text("header")) { Text("content") }
            Section(footer: Text("footer")) { Text("content") }
            Section(header: Text("header"), footer: Text("footer")) { Text("content") }
        }
    }
}

struct z_Section_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Section()
        }
    }
}
