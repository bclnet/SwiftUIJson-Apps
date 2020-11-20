import SwiftUI
import SwiftUIJson

struct z_ImagePaint: View {
    var body: some View {
        VStack {
            Text("ImagePaint")
            VStack {
                Capsule().stroke(ImagePaint(image: Image("image")))
                Capsule().stroke(ImagePaint(image: Image("image"), sourceRect: CGRect(x: 0, y: 0, width: 1, height: 1), scale: 1))
            }
        }
    }
}

struct z_ImagePaint_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_ImagePaint()
        }
    }
}
