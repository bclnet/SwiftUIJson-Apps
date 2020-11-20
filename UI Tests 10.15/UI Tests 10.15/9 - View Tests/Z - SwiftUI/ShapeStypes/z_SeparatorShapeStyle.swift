import SwiftUI
import SwiftUIJson

struct z_SeparatorShapeStyle: View {
    var body: some View {
        VStack {
            Text("SeparatorShapeStyle")
            VStack {
//                Capsule().strokeBorder(SeparatorShapeStyle(gradient: Gradient(colors: [Color.blue]), center: UnitPoint()))
            }
        }
    }
}

struct z_SeparatorShapeStyle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_SeparatorShapeStyle()
        }
    }
}
