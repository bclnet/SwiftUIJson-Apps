import SwiftUI
import SwiftUIJson

struct Z01a_Json: View {
    var body: some View {
        VStack {
            Text("Json")
            Text("italic".var(self))
        }
    }
}

struct Z01a_Json_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Json()
        }
    }
}
