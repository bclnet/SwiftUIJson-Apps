import SwiftUI
import SwiftUIJson

struct z_BackgroundStyle: View {
    var body: some View {
        VStack {
            Text("BackgroundStyle")
            VStack {
                Capsule().strokeBorder(BackgroundStyle())
            }
        }
    }
}

struct z_BackgroundStyle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_BackgroundStyle()
        }
    }
}
