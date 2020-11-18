import SwiftUI
import SwiftUIJson

struct z_HStack: View {
    var body: some View {
        VStack {
            Text("HStack")
            HStack {
                Text("default")
            }
            HStack(alignment: .top, spacing: 5) {
                Text("alignment:spacing")
            }
        }
    }
}

struct z_HStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_HStack()
        }
    }
}
