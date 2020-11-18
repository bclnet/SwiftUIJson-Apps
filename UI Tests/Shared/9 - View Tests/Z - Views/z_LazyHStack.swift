import SwiftUI
import SwiftUIJson

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct z_LazyHStack: View {
    var body: some View {
        VStack {
            Text("LazyHStack")
            LazyHStack {
                Text("default")
            }
            LazyHStack(alignment: .top, spacing: 5) {
                Text("alignment:spacing")
            }
            LazyHStack(alignment: .top, spacing: 5, pinnedViews: .init()) {
                Text("alignment:spacing:pinnedViews")
            }
        }
    }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct z_LazyHStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_LazyHStack()
        }
    }
}
