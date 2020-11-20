import SwiftUI
import SwiftUIJson

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct z_BackgroundStyle: View {
    var body: some View {
        VStack {
            Text("BackgroundStyle")
            VStack {
                Capsule().strokeBorder(BackgroundStyle())
            }
        }
    }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct z_BackgroundStyle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_BackgroundStyle()
        }
    }
}
