import SwiftUI
import SwiftUIJson

struct Z01a_Image: View {
    let uxImage = UXImage(named: "image")!
    let cgImage = UXImage(named: "image")!.cgImage!
    var body: some View {
        VStack {
            Text("Image")
            VStack {
                HStack { Text("_:bundle"); Image("image", bundle: nil) }
                HStack { Text("_:bundle:label"); Image("image", bundle: nil, label: Text("label")) }
                HStack { Text("decorative:bundle"); Image(decorative: "image", bundle: nil) }
                if #available(macOS 11.0, *) {
                    HStack { Text("systemName"); Image(systemName: "trash") }
                }
                HStack { Text("renderingMode"); Image(systemName: "trash").renderingMode(.original) }
            }
            VStack {
                HStack { Text("interpolation(_)");Image("image").interpolation(.medium) }
                HStack { Text("antialiased(_)");Image("image").antialiased(true) }
                HStack { Text("_:scale:orientation:label"); Image(cgImage, scale: 1, orientation: .up, label: Text("label")) }
                HStack { Text("decorative:scale:orientation");Image(decorative: cgImage, scale: 1, orientation: .up) }
                if #available(iOS 13.0, tvOS 13.0, watchOS 6.0, *) {
                    HStack { Text("uiImage"); Image(uiImage: UIImage()) }
                }
            }
            VStack {
                HStack { Text("resizable(capInsets:resizingMode)"); Image("image").resizable(capInsets: EdgeInsets(), resizingMode: .stretch) }
            }
        }
    }
}

struct Z01a_Image_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Image()
        }
    }
}
