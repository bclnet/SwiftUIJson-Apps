import SwiftUI
import SwiftUIJson

struct z_Animation: View {
    var body: some View {
        VStack {
            Text("italic").animation(.easeIn, value: 3)
            Text("italic").animation(.easeInOut)
        }
    }
}

struct z_Animation_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Animation()
        }
    }
}
