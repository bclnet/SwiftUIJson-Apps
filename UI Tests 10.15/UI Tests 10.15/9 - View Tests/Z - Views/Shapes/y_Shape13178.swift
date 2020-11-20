import SwiftUI
import SwiftUIJson

struct y_Shape13178: View {
    var body: some View {
        VStack {
            Text("Shape13178")
            VStack {
                // MARK: - :13189
                Capsule().trim(from: 0.25, to: 1.0)
                // MARK: - :13237
                Capsule().offset(CGSize(width: -100, height: 50))
                Capsule().offset(CGPoint(x: -100, y: 50))
                Capsule().offset(x: -100, y: 50)
                Capsule().scale(x: 1, y: 1, anchor: .center)
                Capsule().scale(1, anchor: .center)
                Capsule().rotation(.degrees(45))
                Capsule().transform(CGAffineTransform())
            }
            VStack {
                // MARK: - :13360
                Capsule().size(CGSize(width: -100, height: 50))
                Capsule().size(width: -100, height: 50)
                // MARK: - :13378
                Capsule().fill(Color.blue, style: FillStyle())
                Capsule().fill(style: FillStyle())
                Capsule().stroke(Color.purple, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .miter, miterLimit: 0, dash: [5, 10], dashPhase: 0))
                Capsule().stroke(Color.purple, lineWidth: 5)
                // MARK: - :13447
                Capsule().stroke(style: StrokeStyle())
                Capsule().stroke(lineWidth: 1)
            }
        }
    }
}

struct y_Shape13178_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            y_Shape13178()
        }
    }
}
