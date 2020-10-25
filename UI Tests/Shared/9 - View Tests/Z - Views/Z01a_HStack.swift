import SwiftUI
import SwiftUIJson


struct Z01a_HStack: View {
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

struct Z01a_HStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_HStack()
        }
    }
}
