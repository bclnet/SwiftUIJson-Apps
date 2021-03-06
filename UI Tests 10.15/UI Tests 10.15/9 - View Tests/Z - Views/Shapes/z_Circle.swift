import SwiftUI
import SwiftUIJson

struct z_Circle: View {
    var body: some View {
        VStack {
            Text("Circle")
            VStack {
                Circle()
                Circle().path(in: CGRect(x: 0, y: 0, width: 100, height: 100))
                Circle().inset(by: 10.0)
            }
        }
    }
}

struct z_Circle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Circle()
        }
    }
}
