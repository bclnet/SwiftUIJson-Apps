import SwiftUI
import SwiftUIJson

struct z_GroupBox: View {
    var body: some View {
        VStack {
            Text("GroupBox")
        }
    }
}

struct z_GroupBox_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_GroupBox()
        }
    }
}
