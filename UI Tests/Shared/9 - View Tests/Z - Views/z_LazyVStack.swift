import SwiftUI
import SwiftUIJson

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct z_LazyVStack: View {
    var body: some View {
        VStack {
            Text("LazyVStack")
            LazyVStack {
                Text("default")
            }
            LazyVStack(alignment: .leading, spacing: 5) {
                Text("alignment:spacing")
            }
            LazyVStack(alignment: .leading, spacing: 5, pinnedViews: .init()) {
                Text("alignment:spacing:pinnedViews")
            }
        }
    }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct z_LazyVStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_LazyVStack()
        }
    }
}
