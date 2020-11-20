import SwiftUI
import SwiftUIJson

struct z_TransformedShape: View {
    var body: some View {
        VStack {
            Text("TransformedShape")
            VStack {
                TransformedShape(shape: Circle(), transform: .identity)
                TransformedShape(shape: Circle(), transform: .identity).path(in: CGRect(x: 0, y: 0, width: 100, height: 100))
            }
        }
    }
}

struct z_TransformedShape_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_TransformedShape()
        }
    }
}
