import SwiftUI
import SwiftUIJson

struct z_RotatedShape: View {
    var body: some View {
        VStack {
            Text("RotatedShape")
            VStack {
                RotatedShape(shape: Circle(), angle: Angle(), anchor: .center)
                RotatedShape(shape: Circle(), angle: Angle(), anchor: .center).path(in: CGRect(x: 0, y: 0, width: 100, height: 100))
                RotatedShape(shape: Circle(), angle: Angle(), anchor: .center).inset(by: 10.0)
            }
        }
    }
}

struct z_RotatedShape_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_RotatedShape()
        }
    }
}
