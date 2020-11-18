import SwiftUI
import SwiftUIJson

struct z_RadialGradient: View {
    var body: some View {
        VStack {
            Text("RadialGradient")
            VStack {
                Text("RadialGradient").background(RadialGradient(gradient: Gradient(colors: [.white, .black]), center: .top, startRadius: 0, endRadius: 45))
            }
        }
    }
}

struct z_RadialGradient_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_RadialGradient()
        }
    }
}
