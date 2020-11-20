import SwiftUI
import SwiftUIJson

struct z_PinnedScrollableViews: View {
    var body: some View {
        VStack {
            Text("PinnedScrollableViews")
            VStack {
            }
        }
    }
}

struct z_PinnedScrollableViews_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_PinnedScrollableViews()
        }
    }
}
