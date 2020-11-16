import SwiftUI
import SwiftUIJson

struct Z01a_ScaledShape: View {
    var body: some View {
        VStack {
            Text("ScaledShape")
            VStack {
                ScaledShape(shape: Circle(), scale: CGSize(width: 5, height: 5), anchor: .center)
                ScaledShape(shape: Circle(), scale: CGSize(width: 5, height: 5), anchor: .center).path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
            }
        }
    }
}

struct Z01a_ScaledShape_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_ScaledShape()
        }
    }
}
