import SwiftUI
import SwiftUIJson

struct z_Text: View {
    var body: some View {
        VStack {
            Text("Text")
            Group {
                // MARK: - Text:14785
                Text(verbatim: "verbatim")
                Text(String("content"))
                // MARK: - Text:14835
                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text(Image(systemName: "trash"))
                }
//                // MARK: - Text:14843
//                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text(URL(fileURLWithPath: ""), formatter: DateFormatter())
                    Text(Date() as NSDate, formatter: DateFormatter())
//                }
//                // MARK: - DateStyle:14859
//                if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                    Text(Date(), style: .relative)
                    Text(Date()...Date())
                    Text(DateInterval())
//                }
                // MARK: - Text:14934
                Text("key", tableName: nil, bundle: nil, comment: nil)
                Text("key", tableName: "table", bundle: nil, comment: nil)
            }
            Group {
                Text("foregroundColor").foregroundColor(.blue)
                Text("font").font(.title)
                Text("fontWeight").fontWeight(.black)
                Text("bold").bold()
                Text("italic").italic()
                Text("strikethrough").strikethrough(true, color: .blue)
                Text("underline").underline(true, color: .blue)
                Text("kerning").kerning(3)
                Text("tracking").tracking(3)
                Text("baselineOffset").baselineOffset(10)
            }
        }
    }
}

struct z_Text_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_Text()
        }
    }
}
