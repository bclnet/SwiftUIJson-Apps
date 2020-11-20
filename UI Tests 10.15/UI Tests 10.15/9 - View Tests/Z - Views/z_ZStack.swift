import SwiftUI
import SwiftUIJson

struct z_ZStack: View {
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

struct z_ZStack_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_ZStack()
        }
    }
}
