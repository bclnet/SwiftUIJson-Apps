import SwiftUI
import SwiftUIJson

struct z_Form: View {
    var body: some View {
        VStack {
            Text("Form")
            Form {
                Text("content")
            }
        }
    }
}

struct z_Form_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Form()
        }
    }
}
