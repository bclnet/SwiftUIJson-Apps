import SwiftUI
import SwiftUIJson

struct z_SecureField: View {
    @State private var text = "text"
    var body: some View {
        VStack {
            Text("SecureField")
            VStack {
                SecureField("titleKey", text: $text) { print("onCommit") }
                SecureField(String("title"), text: $text) { print("onCommit") }
            }
        }
    }
}

struct z_SecureField_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_SecureField()
        }
    }
}
