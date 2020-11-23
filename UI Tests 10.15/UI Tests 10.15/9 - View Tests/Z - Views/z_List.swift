import SwiftUI
import SwiftUIJson

struct z_List: View {
    var body: some View {
        VStack {
            Text("List")
        }
    }
}

struct z_List_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_List()
        }
    }
}
