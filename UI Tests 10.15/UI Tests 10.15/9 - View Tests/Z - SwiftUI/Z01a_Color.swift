import SwiftUI
import SwiftUIJson

#if os(macOS)
typealias UXColor = NSColor
#else
typealias UXColor = UIColor
#endif

struct Z01a_Color: View {
    var body: some View {
        VStack {
            Text("Color")
            VStack {
                // MARK: - CGColor
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text(":CGColor").foregroundColor(Color(CGColor(red: 13, green: 0.5, blue: 0.5, alpha: 1)))
                }
                
                // MARK: - Custom
                Text(".sRGB:red:Green:blue:opacity").foregroundColor(Color(.sRGB, red: 1, green: 0.5, blue: 0.5, opacity: 1))
                Text(".sRGBLinear:red:Green:blue:opacity").foregroundColor(Color(.sRGBLinear, red: 1, green: 0.5, blue: 0.5, opacity: 1))
                Text(".displayP3:red:green:blue:opacity").foregroundColor(Color(.displayP3, red: 1, green: 0.5, blue: 0.5, opacity: 1))
                Text(".sRGB:white:opacity").foregroundColor(Color(.sRGB, white: 0.5, opacity: 1))
                Text(".sRGBLinear:white:opacity").foregroundColor(Color(.sRGBLinear, white: 0.5, opacity: 1))
                Text(".displayP3:white:opacity").foregroundColor(Color(.displayP3, white: 0.5, opacity: 1))
                Text(":hue:saturation:brightness:opacity").foregroundColor(Color(hue: 0.5, saturation: 0.5, brightness: 0.5, opacity: 1))
            }
            VStack {
                // MARK: - Color
                Text("gray").foregroundColor(Color.gray)
                
                // MARK: - Bundle
                Text("String:bundle").foregroundColor(Color("AccentColor", bundle: nil))
                
                // MARK: - UXColor
                if #available(iOS 13.0, macOS 999, tvOS 13.0, watchOS 6.0, *) {
                    Text(":UXColor").foregroundColor(Color(UXColor.red))
                }
                
                // MARK: - Opacity
                Text("opacity").foregroundColor(Color.gray.opacity(0.5))
            }
        }
    }
}

struct Z01a_Color_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_Color()
        }
    }
}
