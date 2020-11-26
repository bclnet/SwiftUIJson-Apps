import SwiftUI
import SwiftUIJson

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_HSplitView: View {
    var body: some View {
        VStack {
            Text("HSplitView")
            HSplitView { Text("content") }
        }
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_HSplitView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_HSplitView()
        }
    }
}
