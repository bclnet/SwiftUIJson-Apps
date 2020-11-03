import SwiftUI
import SwiftUIJson

struct Z01a_Circle: View {
    var body: some View {
        VStack {
            Text("Circle")
            VStack {
                Circle()
            }
        }
    }
}

struct Z01a_Circle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Circle()
        }
    }
}
