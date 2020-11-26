import SwiftUI
import SwiftUIJson
import UniformTypeIdentifiers
import MobileCoreServices

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_PasteButton: View {
    var body: some View {
        VStack {
            Text("PasteButton")
            if #available(macOS 11.0, *) {
                PasteButton(supportedContentTypes: [.text]) { item in print("payloadAction") }
                PasteButton(supportedContentTypes: [.text], validator: { item in print("validator"); return "string" }) { (payload: String) in print("payloadAction") }
            }
            PasteButton(supportedTypes: [kUTTypePlainText as String]) { item in print("payloadAction") }
            PasteButton(supportedTypes: [kUTTypePlainText as String], validator: { item in print("validator"); return "payload" }) { (payload: String) in print("payloadAction") }
        }
    }
}

@available(OSX 10.15, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
struct z_PasteButton_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_PasteButton()
        }
    }
}
