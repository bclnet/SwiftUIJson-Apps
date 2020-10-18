import SwiftUI
import SwiftUIJson

struct Z01a_DynaType: View {
    var body: some View {
        VStack {
            Text("DynaType")
            VStack {
                Text("Nesting")
            }
        }
    }
}

struct Z01a_DynaType_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_DynaType()
        }
    }
}
