import SwiftUI
import SwiftUIJson

struct Z01a_EditButton: View {
    var body: some View {
        VStack {
            Text("EditButton")
            VStack {
                EditButton()
            }
        }
    }
}

struct Z01a_EditButton_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_EditButton()
        }
    }
}
