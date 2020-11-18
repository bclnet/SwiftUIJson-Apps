import SwiftUI
import SwiftUIJson

struct z_EditButton: View {
    var body: some View {
        VStack {
            Text("EditButton")
            VStack {
                EditButton()
            }
        }
    }
}

struct z_EditButton_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_EditButton()
        }
    }
}
