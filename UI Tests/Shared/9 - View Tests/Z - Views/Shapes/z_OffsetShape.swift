import SwiftUI
import SwiftUIJson

struct z_OffsetShape: View {
    var body: some View {
        VStack {
            Text("OffsetShape")
            VStack {
                OffsetShape(shape: Circle(), offset: CGSize(width: 10, height: 10))
                OffsetShape(shape: Circle(), offset: CGSize(width: 10, height: 10)).path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
                OffsetShape(shape: Circle(), offset: CGSize(width: 10, height: 10)).inset(by: 10.0)
            }
        }
    }
}

struct z_OffsetShape_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_OffsetShape()
        }
    }
}
