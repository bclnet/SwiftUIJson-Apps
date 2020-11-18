import SwiftUI
import SwiftUIJson

struct y_InsettableShape8045: View {
    var body: some View {
        VStack {
            Text("InsettableShape8045")
            VStack {
                Text("")
                // MARK: - :8055
                Capsule().strokeBorder(Color.blue, style: StrokeStyle(), antialiased: true)
                Capsule().strokeBorder(style: StrokeStyle(), antialiased: true)
                Capsule().strokeBorder(Color.blue, lineWidth: 3, antialiased: true)
                Capsule().strokeBorder(lineWidth: 1, antialiased: true)
            }
        }
    }
}

struct y_InsettableShape8045_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            y_InsettableShape8045()
        }
    }
}
