import SwiftUI
import SwiftUIJson

struct z_Accessibility: View {
    var body: some View {
        VStack {
            Text("activationPoint").accessibility(activationPoint: CGPoint(x: 0, y: 0))
            Text("activationPoint").accessibility(activationPoint: UnitPoint(x: 0, y: 0))
        }
    }
}

struct z_Accessibility_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Accessibility()
        }
    }
}
