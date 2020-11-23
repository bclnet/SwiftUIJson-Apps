import SwiftUI
import SwiftUIJson

struct z_GeometryReader: View {
    var body: some View {
        VStack {
            Text("GeometryReader")
            VStack {
                GeometryReader { g in
                    Text("content")
                }
            }
        }
    }
}

struct z_GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_GeometryReader()
        }
    }
}
