import SwiftUI
import SwiftUIJson

struct z_Ellipse: View {
    var body: some View {
        VStack {
            Text("Ellipse")
            VStack {
                Ellipse()
                Ellipse().path(in: CGRect(x: 0, y: 0, width: 100, height: 100))
                Ellipse().inset(by: 10.0)
            }
        }
    }
}

struct z_Ellipse_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Ellipse()
        }
    }
}
