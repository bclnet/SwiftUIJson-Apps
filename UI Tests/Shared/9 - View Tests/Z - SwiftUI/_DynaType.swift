import SwiftUI
import SwiftUIJson

struct _DynaType: View {
    var body: some View {
        VStack {
            Text("DynaType")
            VStack {
                Text("Nesting")
            }
        }
    }
}

struct _DynaType_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            _DynaType()
        }
    }
}
