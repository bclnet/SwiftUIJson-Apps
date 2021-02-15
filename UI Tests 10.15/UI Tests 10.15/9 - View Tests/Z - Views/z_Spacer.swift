import SwiftUI
import SwiftUIJson

struct z_Spacer: View {
    var body: some View {
        VStack {
            Text("Spacer")
            Group {
                Text("default")
                Spacer()
                Text("minLength")
                Spacer(minLength: 5)
            }
        }
    }
}

struct z_Spacer_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Spacer()
        }
    }
}
