import SwiftUI
import SwiftUIJson

@available(iOS 13.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_EditButton: View {
    var body: some View {
        VStack {
            Text("EditButton")
            VStack {
                EditButton()
            }
        }
    }
}

@available(iOS 13.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_EditButton_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_EditButton()
        }
    }
}
