import SwiftUI
import SwiftUIJson

struct z_EquatableView: View {
    var body: some View {
        VStack {
            Text("EquatableView")
        }
    }
}

struct z_EquatableView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_EquatableView()
        }
    }
}
