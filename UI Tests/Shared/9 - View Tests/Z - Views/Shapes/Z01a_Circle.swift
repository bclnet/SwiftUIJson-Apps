import SwiftUI
import SwiftUIJson

struct Z01a_Circle: View {
    var body: some View {
        VStack {
            Text("Circle")
            VStack {
                Circle()
                Circle().path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
                Circle().inset(by: 10.0)
            }
        }
    }
}

struct Z01a_Circle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Circle()
        }
    }
}
