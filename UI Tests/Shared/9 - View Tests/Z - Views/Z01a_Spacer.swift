import SwiftUI
import SwiftUIJson

struct Z01a_Spacer: View {
    var body: some View {
        VStack {
            Text("Spacer")
            VStack {
                Text("default")
                Spacer()
                Text("minLength")
                Spacer(minLength: 5)
            }
        }
    }
}

struct Z01a_Spacer_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Spacer()
        }
    }
}
