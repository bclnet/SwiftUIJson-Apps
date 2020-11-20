import SwiftUI
import SwiftUIJson

struct z_ScaledShape: View {
    var body: some View {
        VStack {
            Text("ScaledShape")
            VStack {
                ScaledShape(shape: Circle(), scale: CGSize(width: 1, height: 1), anchor: .center)
                ScaledShape(shape: Circle(), scale: CGSize(width: 1, height: 1), anchor: .center).path(in: CGRect(x: 0, y: 0, width: 100, height: 100))
            }
        }
    }
}

struct z_ScaledShape_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_ScaledShape()
        }
    }
}
