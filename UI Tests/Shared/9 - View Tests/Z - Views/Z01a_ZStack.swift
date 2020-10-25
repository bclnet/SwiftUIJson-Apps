import SwiftUI
import SwiftUIJson

struct Z01a_ZStack: View {
    var body: some View {
        VStack {
            Text("ZStack")
            ZStack {
                Text("default")
            }
            ZStack(alignment: .top) {
                Text("alignment")
            }
        }
    }
}

struct Z01a_ZStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_ZStack()
        }
    }
}
