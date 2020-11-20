import SwiftUI
import SwiftUIJson

struct z_RoundedRectangle: View {
    var body: some View {
        VStack {
            Text("RoundedRectangle")
            VStack {
                RoundedRectangle(cornerSize: CGSize(width: 5, height: 10), style: .circular)
                RoundedRectangle(cornerRadius: 5.0, style: .circular)
                RoundedRectangle(cornerRadius: 5.0, style: .circular).path(in: CGRect(x: 0, y: 0, width: 100, height: 100))
                RoundedRectangle(cornerRadius: 5.0, style: .circular).inset(by: 10.0)
            }
        }
    }
}

struct z_RoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_RoundedRectangle()
        }
    }
}
