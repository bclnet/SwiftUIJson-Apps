import SwiftUI
import SwiftUIJson

struct Z01a_ContainerRelativeShape: View {
    var body: some View {
        VStack {
            Text("ContainerRelativeShape")
            VStack {
                ContainerRelativeShape()
                ContainerRelativeShape().path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
                ContainerRelativeShape().inset(by: 10.0)
            }
        }
    }
}

struct Z01a_ContainerRelativeShape_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_ContainerRelativeShape()
        }
    }
}
