import SwiftUI
import SwiftUIJson

struct z_VStack: View {
    var body: some View {
        VStack {
            Text("VStack")
            VStack {
                Text("default")
            }
            VStack(alignment: .leading, spacing: 5) {
                Text("alignment:spacing")
            }
        }
    }
}

struct z_VStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_VStack()
        }
    }
}
