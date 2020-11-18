import SwiftUI
import SwiftUIJson

struct z_Edge: View {
    var body: some View {
        VStack {
            Text("Edge")
            VStack {
                Text("edgesIgnoringSafeArea")
                    .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct z_Edge_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Edge()
        }
    }
}
