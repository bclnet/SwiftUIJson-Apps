import SwiftUI
import SwiftUIJson

struct Z01a_AnyView: View {
    var value = 0
    var body: some View {
        VStack {
            Text("AnyView")
            Text("show optional")
            if value == 0 {
                Text("inside")
            }
            Text("hide optional")
            if value == 1 {
                Text("inside")
            }
        }
    }
}

struct Z01a_AnyView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_AnyView()
        }
    }
}
