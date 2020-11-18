import SwiftUI
import SwiftUIJson

struct z_Capsule: View {
    var body: some View {
        VStack {
            Text("Capsule")
            VStack {
                Capsule(style: .continuous)
                Capsule().path(in: CGRect(x: 0, y: 0, width: 100, height: 100))
                Capsule().inset(by: 10.0)
            }
        }
    }
}

struct z_Capsule_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Capsule()
        }
    }
}
