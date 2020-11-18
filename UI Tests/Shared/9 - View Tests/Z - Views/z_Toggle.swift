import SwiftUI
import SwiftUIJson

struct z_Toggle: View {
    @State private var isOn = true
    var body: some View {
        VStack {
            Text("Toggle")
            VStack {
                Toggle(isOn: $isOn) { Text("label") }
                Toggle("titleKey", isOn: $isOn)
                Toggle(String("title"), isOn: $isOn)
                Toggle("titleKey", isOn: $isOn).toggleStyle(DefaultToggleStyle())
            }
        }
    }
}

struct z_Toggle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Toggle()
        }
    }
}
