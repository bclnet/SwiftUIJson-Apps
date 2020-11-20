import SwiftUI
import SwiftUIJson

struct z_Binding: View {
    @State private var isPresented = true

    var body: some View {
        VStack {
            Text("Binding").alert(isPresented: $isPresented) { Alert(title: Text("content")) }
        }
    }
}

struct z_Binding_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Binding()
        }
    }
}
