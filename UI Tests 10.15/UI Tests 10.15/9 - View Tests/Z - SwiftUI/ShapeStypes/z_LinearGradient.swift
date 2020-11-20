import SwiftUI
import SwiftUIJson

struct z_LinearGradient: View {
    var body: some View {
        VStack {
            Text("LinearGradient")
            VStack {
                Text("LinearGradient").background(LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom))
            }
        }
    }
}

struct z_LinearGradient_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_LinearGradient()
        }
    }
}
