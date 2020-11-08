import SwiftUI
import SwiftUIJson

struct Z01a_Toggle: View {
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

struct Z01a_Toggle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Toggle()
        }
    }
}
