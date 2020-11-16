import SwiftUI
import SwiftUIJson

struct Z01a_OffsetShape: View {
    var body: some View {
        VStack {
            Text("OffsetShape")
            VStack {
                OffsetShape(shape: Circle(), offset: CGSize(width: 10, height: 10))
//                OffsetShape(shape: Circle(), offset: CGSize(width: 10, height: 10)).path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
//                OffsetShape(shape: Circle(), offset: CGSize(width: 10, height: 10)).inset(by: 10.0)
            }
        }
    }
}

struct Z01a_OffsetShape_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_OffsetShape()
        }
    }
}
