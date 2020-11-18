import SwiftUI
import SwiftUIJson

struct z_Image: View {
    private let uxImage = UXImage(named: "image")!
    private let cgImage = UXImage(named: "image")!.cgImage_!
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
                HStack { Text("renderingMode"); Image("image").renderingMode(.original) }
            }
            VStack {
                HStack { Text("interpolation(_)");Image("image").interpolation(.medium) }
                HStack { Text("antialiased(_)");Image("image").antialiased(true) }
                HStack { Text("_:scale:orientation:label"); Image(cgImage, scale: 1, orientation: .up, label: Text("label")) }
                HStack { Text("decorative:scale:orientation");Image(decorative: cgImage, scale: 1, orientation: .up) }
                #if os(macOS)
                HStack { Text("nsImage"); Image(nsImage: uxImage) }
                #else
                HStack { Text("uiImage"); Image(uiImage: uxImage) }
                #endif
            }
            VStack {
                HStack { Text("resizable(capInsets:resizingMode)"); Image("image").resizable(capInsets: EdgeInsets(), resizingMode: .stretch) }
            }
        }
    }
}

struct z_Image_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Image()
        }
    }
}
