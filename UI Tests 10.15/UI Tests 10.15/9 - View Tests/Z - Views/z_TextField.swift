import SwiftUI
import SwiftUIJson

struct z_TextField: View {
    @State private var text = "text"
    @State private var value = 1
    var body: some View {
        VStack {
            Text("TextField")
            VStack {
                TextField("titleKey", text: $text, onEditingChanged: { _ in print("onEditingChanged") }) { print("onCommit") }
                TextField(String("title"), text: $text, onEditingChanged: { _ in print("onEditingChanged") }) { print("onCommit") }
                TextField("titleKey", value: $value, formatter: NumberFormatter(), onEditingChanged: { _ in print("onEditingChanged") }) { print("onCommit") }
                TextField(String("title"), value: $text, formatter: NumberFormatter(), onEditingChanged: { _ in print("onEditingChanged") }) { print("onCommit") }
            }
        }
    }
}

struct z_TextField_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_TextField()
        }
    }
}
