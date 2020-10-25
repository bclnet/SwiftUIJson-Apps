import SwiftUI
import SwiftUIJson

struct Z01a_LazyVStack: View {
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

struct Z01a_LazyVStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_LazyVStack()
        }
    }
}
