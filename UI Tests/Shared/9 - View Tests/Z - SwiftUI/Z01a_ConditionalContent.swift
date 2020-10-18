import SwiftUI
import SwiftUIJson

struct Z01a_ConditionalContent: View {
    var value = 0
    var body: some View {
        VStack {
            Text("ConditionalContent")
            Text("switch")
            switch value {
            case 1: Text("One")
            default: Text("Default")
            }
        }
    }
}

struct Z01a_ConditionalContent_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_ConditionalContent()
        }
    }
}
