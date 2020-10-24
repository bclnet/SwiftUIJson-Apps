import SwiftUI
import SwiftUIJson

struct Z01a_LazyHStack: View {
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

struct Z01a_LazyHStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_LazyHStack()
        }
    }
}
