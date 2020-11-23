import SwiftUI
import SwiftUIJson

struct z_MenuButton: View {
    var body: some View {
        VStack {
            Text("MenuButton")
        }
    }
}

struct z_MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_MenuButton()
        }
    }
}
