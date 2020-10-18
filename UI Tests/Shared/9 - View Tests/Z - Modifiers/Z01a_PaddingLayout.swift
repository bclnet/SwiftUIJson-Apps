import SwiftUI
import SwiftUIJson

struct Z01a_PaddingLayout: View {
    var body: some View {
        VStack {
            Text("PaddingLayout")
            Text("default")
                .padding()
//            Text("edges:length")
//                .padding(.bottom, 5)
//            Text("insets??")
//                .padding(EdgeInsets().bottom)
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
