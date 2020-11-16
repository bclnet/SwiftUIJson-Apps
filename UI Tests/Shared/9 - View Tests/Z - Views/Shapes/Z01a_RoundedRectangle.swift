import SwiftUI
import SwiftUIJson

struct Z01a_RoundedRectangle: View {
    var body: some View {
        VStack {
            Text("RoundedRectangle")
            VStack {
                RoundedRectangle(cornerSize: CGSize(width: 5, height: 10), style: .circular)
                RoundedRectangle(cornerRadius: 5.0, style: .circular)
                RoundedRectangle(cornerRadius: 5.0, style: .circular).path(in: CGRect(x: 0, y: 0, width: 10, height: 10))
                RoundedRectangle(cornerRadius: 5.0, style: .circular).inset(by: 10.0)
            }
        }
    }
}

struct Z01a_RoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_RoundedRectangle()
        }
    }
}
