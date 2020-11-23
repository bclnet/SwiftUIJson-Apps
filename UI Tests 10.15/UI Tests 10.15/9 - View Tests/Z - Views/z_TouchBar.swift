import SwiftUI
import SwiftUIJson

struct z_TouchBar: View {
    var body: some View {
        VStack {
            Text("TouchBar")
        }
    }
}

struct z_TouchBar_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_TouchBar()
        }
    }
}
