import SwiftUI
import SwiftUIJson

struct A04e_CircleImage: View {
    var base = BaseView(Self.self)

    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct A04e_CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            A04e_CircleImage()
        }
    }
}

extension A04e_CircleImage: JsonView {
    public init(from decoder: Decoder, for dynaType: DynaType) throws { self.init() }
    public func encode(to encoder: Encoder) throws {}
}
