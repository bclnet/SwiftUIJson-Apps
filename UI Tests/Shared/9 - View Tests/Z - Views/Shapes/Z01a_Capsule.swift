import SwiftUI
import SwiftUIJson

struct Z01a_Capsule: View {
    var body: some View {
        VStack {
            Text("Capsule")
            VStack {
                Capsule(style: .continuous)
                Capsule().path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
                Capsule().inset(by: 10.0)
            }
        }
    }
}

struct Z01a_Capsule_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Capsule()
        }
    }
}
