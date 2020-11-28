import SwiftUI
import SwiftUIJson

struct z_Link: View {
    var body: some View {
        VStack {
            Text("Link")
            Link(destination: URL()) { Text("label") }
            Link("titleKey", destination: URL())
            Link(String("title"), destination: URL())
        }
    }
}

struct z_Link_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Link()
        }
    }
}
