import SwiftUI
import SwiftUIJson

struct Z01a_Rectangle: View {
    var body: some View {
        VStack {
            Text("Rectangle")
            VStack {
                Rectangle()
                Rectangle().path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
                Rectangle().inset(by: 10.0)
            }
        }
    }
}

struct Z01a_Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Rectangle()
        }
    }
}
