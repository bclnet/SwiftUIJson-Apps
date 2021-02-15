import SwiftUI
import SwiftUIJson

struct z_Link: View {
    var body: some View {
        VStack {
            Text("Link")
            Link(destination: URL(fileURLWithPath: "")) { Text("label") }
            Link("titleKey", destination: URL(fileURLWithPath: ""))
            Link(String("title"), destination: URL(fileURLWithPath: ""))
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
