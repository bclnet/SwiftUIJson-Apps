import SwiftUI
import SwiftUIJson

struct z_AnyViewModifier: View {
    var body: some View {
        VStack {
            Text("AnyViewModifier")
        }
    }
}

struct z_AnyViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_AnyViewModifier()
        }
    }
}
