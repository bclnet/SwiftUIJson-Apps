import SwiftUI
import SwiftUIJson

struct Z01a_ConditionalContent: View {
    var value = 0
    var body: some View {
        VStack {
            Text("ConditionalContent")
            Text("switch: 1")
            switch value {
            default: Text("default")
            }
            Text("switch: 2")
            switch value {
            case 0: Text("zero")
            default: Text("default")
            }
            Text("switch: 3")
            switch value {
            case 0: Text("zero")
            case 1: Text("one")
            default: Text("default")
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
