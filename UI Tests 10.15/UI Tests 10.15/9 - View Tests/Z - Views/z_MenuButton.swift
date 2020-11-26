import SwiftUI
import SwiftUIJson

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_MenuButton: View {
    var body: some View {
        VStack {
            Text("MenuButton")
            MenuButton(label: Text("label")) { Text("content") }
            MenuButton("titleKey") { Text("content") }
            MenuButton(String("title")) { Text("content") }
        }
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_MenuButton()
        }
    }
}
