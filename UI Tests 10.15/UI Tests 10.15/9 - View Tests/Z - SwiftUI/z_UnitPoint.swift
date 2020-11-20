import SwiftUI
import SwiftUIJson

struct z_UnitPoint: View {
    var body: some View {
        VStack {
            Text("UnitPoint")
            VStack {
            }
        }
    }
}

struct z_UnitPoint_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_UnitPoint()
        }
    }
}
