import SwiftUI
import SwiftUIJson

struct z_EmptyView: View {
    var body: some View {
        VStack {
            Text("EmptyView")
            EmptyView()
        }
    }
}

struct z_EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_EmptyView()
        }
    }
}
