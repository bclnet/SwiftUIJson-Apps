import SwiftUI
import SwiftUIJson

struct z_Divider: View {
    var body: some View {
        VStack {
            Text("Divider")
            Divider()
        }
    }
}

struct z_Divider_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Divider()
        }
    }
}
