import SwiftUI
import SwiftUIJson

struct Z01a_Text: View {
    var body: some View {
        VStack {
            Text("Text")
            HStack {
                Text("incomplete")
            }
        }
    }
}

struct Z01a_Text_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Text()
        }
    }
}
