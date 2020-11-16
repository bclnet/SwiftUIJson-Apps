import SwiftUI
import SwiftUIJson

struct Z01a_RotatedShape: View {
    var body: some View {
        VStack {
            Text("RotatedShape")
            VStack {
                RotatedShape(shape: Circle(), angle: Angle(), anchor: .center)
                RotatedShape(shape: Circle(), angle: Angle(), anchor: .center).path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
                RotatedShape(shape: Circle(), angle: Angle(), anchor: .center).inset(by: 10.0)
            }
        }
    }
}

struct Z01a_RotatedShape_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_RotatedShape()
        }
    }
}
