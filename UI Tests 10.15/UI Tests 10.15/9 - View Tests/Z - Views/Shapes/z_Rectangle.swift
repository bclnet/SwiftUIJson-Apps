import SwiftUI
import SwiftUIJson

struct z_Rectangle: View {
    var body: some View {
        VStack {
            Text("Rectangle")
            VStack {
                Rectangle()
                Rectangle().path(in: CGRect(x: 0, y: 0, width: 100, height: 100))
                Rectangle().inset(by: 10.0)
            }
        }
    }
}

struct z_Rectangle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Rectangle()
        }
    }
}
