import SwiftUI
import SwiftUIJson

struct z_HSplitView: View {
    var body: some View {
        VStack {
            Text("HSplitView")
        }
    }
}

struct z_HSplitView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_HSplitView()
        }
    }
}
