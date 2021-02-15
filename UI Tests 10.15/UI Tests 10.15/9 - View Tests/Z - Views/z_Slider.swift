import SwiftUI
import SwiftUIJson

struct z_Slider: View {
    @State private var value: Double = 0
    var body: some View {
        VStack {
            Text("Slider")
            Group {
                Slider(value: $value, in: -100...100, onEditingChanged: { _ in }, minimumValueLabel: Text("min"), maximumValueLabel: Text("max")) { Text("label") }
                Slider(value: $value, in: 0...100, step: 1, onEditingChanged: { _ in }, minimumValueLabel: Text("min"), maximumValueLabel: Text("max")) { Text("label") }
                Slider(value: $value, in: -100...100, onEditingChanged: { _ in }) { Text("label") }
                Slider(value: $value, in: -100...100, step: 0.5, onEditingChanged: { _ in }) { Text("label") }
                Slider(value: $value, in: -100...100, onEditingChanged: { _ in })
                Slider(value: $value, in: -100...100, step: 0.5, onEditingChanged: { _ in })
            }
        }
    }
}

struct z_Slider_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Slider()
        }
    }
}
