import SwiftUI
import SwiftUIJson

struct z_ForegroundStyle: View {
    var body: some View {
        VStack {
            Text("ForegroundStyle")
            VStack {
                Capsule().strokeBorder(ForegroundStyle())
            }
        }
    }
}

struct z_ForegroundStyle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_ForegroundStyle()
        }
    }
}
