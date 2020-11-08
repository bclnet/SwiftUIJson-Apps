import SwiftUI
import SwiftUIJson

struct Z01a_ContextMenu: View {
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

struct Z01a_ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_ContextMenu()
        }
    }
}
