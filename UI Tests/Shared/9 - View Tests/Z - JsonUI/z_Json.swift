import SwiftUI
import SwiftUIJson

struct z_Json: View {
    @State var isPresented = false
    var body: some View {
        VStack {
            Text("Json")
            Text("italic".var(self))   
        }
    }
}

struct z_Json_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Json()
        }
    }
}
