import SwiftUI
import SwiftUIJson

struct z_LocalizedStringKey: View {
    var body: some View {
        VStack {
            Text("LocalizedStringKey")
            VStack {
            }
        }
    }
}

struct z_LocalizedStringKey_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_LocalizedStringKey()
        }
    }
}
