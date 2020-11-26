import SwiftUI
import SwiftUIJson

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_VSplitView: View {
    var body: some View {
        VStack {
            Text("VSplitView")
            VSplitView { Text("content") }
        }
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_VSplitView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_VSplitView()
        }
    }
}
