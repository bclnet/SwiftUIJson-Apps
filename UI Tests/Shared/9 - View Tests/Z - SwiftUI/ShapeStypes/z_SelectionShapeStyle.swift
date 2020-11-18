import SwiftUI
import SwiftUIJson

struct z_SelectionShapeStyle: View {
    var body: some View {
        VStack {
            Text("SelectionShapeStyle")
            VStack {
//                Capsule().strokeBorder(SelectionShapeStyle(gradient: Gradient(colors: [Color.blue]), center: UnitPoint()))
            }
        }
    }
}

struct z_SelectionShapeStyle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_SelectionShapeStyle()
        }
    }
}
