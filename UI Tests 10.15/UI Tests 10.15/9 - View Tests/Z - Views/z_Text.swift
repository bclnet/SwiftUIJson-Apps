import SwiftUI
import SwiftUIJson

struct z_Text: View {
    var body: some View {
        VStack {
            Text("Text")
            HStack {
                Text("incomplete")
            }
        }
    }
}

struct z_Text_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Text()
        }
    }
}
