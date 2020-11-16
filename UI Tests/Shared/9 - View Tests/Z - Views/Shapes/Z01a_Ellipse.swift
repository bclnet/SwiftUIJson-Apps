import SwiftUI
import SwiftUIJson

struct Z01a_Ellipse: View {
    var body: some View {
        VStack {
            Text("Ellipse")
            VStack {
                Ellipse()
                Ellipse().path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
                Ellipse().inset(by: 10.0)
            }
        }
    }
}

struct Z01a_Ellipse_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Ellipse()
        }
    }
}
