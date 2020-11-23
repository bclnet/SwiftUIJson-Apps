import SwiftUI
import SwiftUIJson

struct z_Group: View {
    var body: some View {
        VStack {
            Text("Group")
        }
    }
}

struct z_Group_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Group()
        }
    }
}
