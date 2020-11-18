import SwiftUI
import SwiftUIJson

#if os(macOS)
typealias UXColor = NSColor
#else
typealias UXColor = UIColor
#endif

struct z_Color: View {
    let cgColor = CGColor(red: 13, green: 0.5, blue: 0.5, alpha: 1)
    var body: some View {
        VStack {
            Text("Color")
            VStack {
                // MARK: - CGColor
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text("_:CGColor").foregroundColor(Color(cgColor))
                }
                
                // MARK: - Custom
                Text(".sRGB:red:Green:blue:opacity").foregroundColor(Color(.sRGB, red: 1, green: 0.5, blue: 0.5, opacity: 1))
                Text(".sRGBLinear:red:Green:blue:opacity").foregroundColor(Color(.sRGBLinear, red: 1, green: 0.5, blue: 0.5, opacity: 1))
                Text(".displayP3:red:green:blue:opacity").foregroundColor(Color(.displayP3, red: 1, green: 0.5, blue: 0.5, opacity: 1))
                Text(".sRGB:white:opacity").foregroundColor(Color(.sRGB, white: 0.5, opacity: 1))
                Text(".sRGBLinear:white:opacity").foregroundColor(Color(.sRGBLinear, white: 0.5, opacity: 1))
                Text(".displayP3:white:opacity").foregroundColor(Color(.displayP3, white: 0.5, opacity: 1))
                Text("_:hue:saturation:brightness:opacity").foregroundColor(Color(hue: 0.5, saturation: 0.5, brightness: 0.5, opacity: 1))
            }
            VStack {
                // MARK: - Color
                Text("gray").foregroundColor(Color.gray)
                
                // MARK: - Bundle
                Text("_:bundle").foregroundColor(Color("AccentColor", bundle: nil))
                
                // MARK: - UXColor
                Text("_:UXColor").foregroundColor(Color(UXColor.red))
                
                // MARK: - Opacity
                Text("opacity").foregroundColor(Color.gray.opacity(0.5))
            }
        }
    }
}

struct z_Color_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Color()
        }
    }
}
