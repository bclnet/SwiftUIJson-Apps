import SwiftUI
import SwiftUIJson

struct z_ScrollView: View {
    var body: some View {
        VStack {
            Text("ScrollView")
            ScrollView(.vertical, showsIndicators: true) { Text("content") }
        }
    }
}

struct z_ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_ScrollView()
        }
    }
}
