import SwiftUI
import SwiftUIJson

struct Z01a_View19000: View {
    @State var isPresented = true
    var body: some View {
        VStack {
            Text("View")
            
            // MARK: - Style:19035
            Text("saturation()").saturation(0.5)
            
            // MARK: - Effect:19072
            Text("transition(_:)").transition(nil)
            
            // MARK: - Style:19080
            Text("opacity(_:)").opacity(0.5)
            
            // MARK: - Animation:19121
            Text("animation(_:value:)").animation(nil, 1)
            
            // MARK: - Tag:19138
            Text("tag(_:)").tag("tag")
            
            // MARK: - Composite:19180
            Text("blendMode(_:)").blendMode(.colorBurn)
            
            // MARK: - Composite:19212
            Text("listRowBackground(_:)").listRowBackground(Image(systemName: "sparkles"))
            
            // MARK: - Composite:19250
            Text("drawingGroup(opaque:colorMode:)").drawingGroup(opaque: false, colorMode: .nonLinear)
            
            // MARK: - Composite:19299
            Text("compositingGroup(_:)").compositingGroup()
            
            // MARK: - Preview:19340
            Text("previewDevice(_:)").previewDevice(PreviewDevice)
            Text("previewLayout(_:)").previewLayout(PreviewLayout)
            Text("previewDisplayName(_:)").previewDisplayName("value")
            if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                Text("previewContext(_:)").previewContext(PreviewContext)
            }
            
            // MARK: - Shape:19388
            Text("clipShape(_:)").clipShape(Circle())
            Text("clipped(antialiased:)").clipped(antialiased: false)
            Text("cornerRadius(_:antialiased:)").cornerRadius(25, antialiased: true)
            
            // MARK: - Style:19476
            Text("shadow(color:radius:x:y:)").shadow(color: Color.gray, radius: 1.0, x: CGFloat(0), y: CGFloat(0))
            
            // MARK: - Style:19517
            Text("toggleStyle(_:)").toggleStyle(SwitchToggleStyle())
            
            // MARK: - Style:19536
            Text("colorScheme(_:)").colorScheme(ColorScheme)
            if #available(macOS 11.0, *) {
                Text("imageScale(_:)").imageScale(.medium)
            }
            Text("font(_:)").font(.system(size: 16, weight: .light, design: .default))
            
            // MARK: - Frame:19628
            Text("frame(width:height:alignment:)").frame(width: 200, height: 30, alignment: .topLeading)
            Text("frame()").frame()
            
            // MARK: - Frame:19696
            Text("frame(_:)").frame(minWidth: nil, idealWidth: nil, maxWidth: nil, minHeight: nil, idealHeigh: nil, maxHeight: nil, alignment: .center)
            
            // MARK: - Style:19743
            if #available(iOS 14.0, macOS 11.0, tvOS 999, watchOS 999, *) {
                Text("groupBoxStyle(_:)").groupBoxStyle(BorderedGroupBoxStyle())
            }
            
            // MARK: - TabItem:19755
            Text("tabItem(_:)").tabItem { Text("label") }
            
            // MARK: - Popover:19801
            if #available(iOS 13.0, macOS 10.15, tvOS 999, watchOS 999, *) {
                Text("popover(item:attachmentAnchor:arrowEdge:content:)").popover(item: nil, attachmentAnchor: .rect(.bounds), arrowEdge: .top) { Text("content") }
                Text("popover(isPresented:attachmentAnchor:arrowEdge:content:)").popover(isPresented: $isPresented, attachmentAnchor: .rect(.bounds), arrowEdge: .top) { Text("content") }
            }
            
            // MARK: - Style:19840
            if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                Text("labelStyle(_:)").labelStyle(MyCustomLabelStyle())
            }
            
            // MARK: - OnHover:19857
            if #available(iOS 13.4, macOS 10.15, tvOS 999, watchOS 999, *) {
                Text("onHover(perform:)").onHover { print("perform") }
            }
            
            // MARK: - Effect:19878
            if #available(iOS 13.4, macOS 999, tvOS 999, watchOS 999, *) {
                Text("hoverEffect(effect:)").hoverEffect(.automatic)
            }
            
            // MARK: - Hidden:19895
            Text("hidden()").hidden()
            
            // MARK: - Keyboard:19907
            if #available(iOS 13.0, tvOS 13.0, macOS 999, watchOS 999, *) {
                Text("keyboardType(_:)").keyboardType(.emailAddress)
            }
            
            // MARK: - Keyboard:19940
            if #available(iOS 13.0, tvOS 13.0, macOS 999, watchOS 999, *) {
                Text("autocapitalization(_:)").autocapitalization(UITextAutocapitalizationType.words)
            }
            
            // MARK: - Effect:19967
            if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
                Text("matchedGeometryEffect(id:in:properties:anchor:isSource:)").matchedGeometryEffect(id: 1, in: nil, properties: .frame, anchor: .center, isSource: true)
            }
            
            // MARK: - OnPreferenceChange:19895
            Text("onPreferenceChange(_:perform:)").onPreferenceChange(nil) { print("perform") }
        }
    }
}

struct Z01a_View19000_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            Z01a_View19000()
        }
    }
}
