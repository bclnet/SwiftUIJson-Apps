import SwiftUI
import SwiftUIJson

struct Z01a_PaddingLayout: View {
    var body: some View {
        VStack {
            Text("PaddingLayout")
            Text("padding")
                .padding()
        }
    }
}

struct Z01a_PaddingLayout_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_PaddingLayout()
        }
    }
}
