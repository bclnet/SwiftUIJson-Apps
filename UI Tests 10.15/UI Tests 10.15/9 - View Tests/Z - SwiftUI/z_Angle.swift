import SwiftUI
import SwiftUIJson

struct z_Angle: View {
    var body: some View {
        VStack {
            Text("Angle")
            VStack {
                Text("degrees").rotationEffect(.degrees(-90))
                Text("radians").rotationEffect(.radians(.pi))
            }
        }
    }
}

struct z_Angle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Angle()
        }
    }
}
