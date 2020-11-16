import SwiftUI
import SwiftUIJson

struct Z01a_TransformedShape: View {
    var body: some View {
        VStack {
            Text("TransformedShape")
            VStack {
                TransformedShape(shape: Circle(), transform: CGAffineTransform())
                TransformedShape(shape: Circle(), transform: CGAffineTransform()).path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
            }
        }
    }
}

struct Z01a_TransformedShape_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_TransformedShape()
        }
    }
}
