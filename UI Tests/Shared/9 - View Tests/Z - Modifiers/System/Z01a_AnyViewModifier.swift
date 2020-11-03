import SwiftUI
import SwiftUIJson

struct Z01a_AnyViewModifier: View {
    var body: some View {
        VStack {
            Text("AnyViewModifier")
        }
    }
}

struct Z01a_AnyViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_AnyViewModifier()
        }
    }
}
