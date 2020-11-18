import SwiftUI
import SwiftUIJson

struct z_ContainerRelativeShape: View {
    var body: some View {
        VStack {
            Text("ContainerRelativeShape")
            VStack {
                ContainerRelativeShape()
                ContainerRelativeShape().path(in: CGRect(x: 0, y: 0, width: 100, height: 100))
                ContainerRelativeShape().inset(by: 10.0)
            }
        }
    }
}

struct z_ContainerRelativeShape_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_ContainerRelativeShape()
        }
    }
}
