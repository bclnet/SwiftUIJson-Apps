import SwiftUI
import SwiftUIJson

struct z_ContextMenu: View {
    var body: some View {
        VStack {
            Text("ContextMenu")
            VStack {
                Text("contextMenu").contextMenu { Text("item") }
        //        Text("contextMenu").contextMenu(ContextMenu { Text("item") })
            }
        }
    }
}

struct z_ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_ContextMenu()
        }
    }
}
