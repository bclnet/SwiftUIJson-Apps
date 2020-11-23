import SwiftUI
import SwiftUIJson

struct z_VSplitView: View {
    var body: some View {
        VStack {
            Text("VSplitView")
        }
    }
}

struct z_VSplitView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_VSplitView()
        }
    }
}
