import SwiftUI
import SwiftUIJson

struct z_NavigationView: View {
    var body: some View {
        VStack {
            Text("NavigationView")
            NavigationView { Text("content") }
        }
    }
}

struct z_NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_NavigationView()
        }
    }
}
