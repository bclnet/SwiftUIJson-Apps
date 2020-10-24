import SwiftUI
import SwiftUIJson

struct Z01a_ConditionalContent: View {
    var body: some View {
        VStack {
            Text("Main")
            if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                Text("one")
                Text("two")
            }
        }
    }
}

struct Z01a_ConditionalContent_: View {
    var value = 0
    var body: some View {
        VStack {
            Text("ConditionalContent")
            VStack {
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
            Text("#pragma")
            VStack {
                Text("single")
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("one")
                }
                Text("double")
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("one")
                    Text("two")
                }
            }
            Text("#pragma 2")
            VStack {
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("one")
                }
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
