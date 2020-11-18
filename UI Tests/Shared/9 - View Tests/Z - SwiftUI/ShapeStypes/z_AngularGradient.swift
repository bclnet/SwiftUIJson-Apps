import SwiftUI
import SwiftUIJson

struct z_AngularGradient: View {
    var body: some View {
        VStack {
            Text("AngularGradient")
            VStack {
                Text("AngularGradient").background(AngularGradient(gradient: Gradient(colors: [.white, .black]), center: .center, startAngle: .degrees(15), endAngle: .degrees(45)))
                Text("AngularGradient").background(AngularGradient(gradient: Gradient(colors: [.white, .black]), center: .center, angle: .degrees(45)))
            }
        }
    }
}

struct z_AngularGradient_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_AngularGradient()
        }
    }
}
