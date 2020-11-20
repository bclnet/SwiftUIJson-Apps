import SwiftUI
import SwiftUIJson

struct z_Gradient: View {
    var body: some View {
        VStack {
            Text("Gradient")
            VStack {
                Text("Gradient").background(LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom))
                Text("Gradient").background(LinearGradient(gradient: Gradient(stops: [.init(color: .blue, location: 0), .init(color: .black, location: 1)]), startPoint: .top, endPoint: .bottom))
            }
        }
    }
}

struct z_Gradient_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Gradient()
        }
    }
}
