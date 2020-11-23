import SwiftUI
import SwiftUIJson

struct z_PasteButton: View {
    var body: some View {
        VStack {
            Text("PasteButton")
        }
    }
}

struct z_PasteButton_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_PasteButton()
        }
    }
}
