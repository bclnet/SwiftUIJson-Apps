import SwiftUI
import SwiftUIJson

struct z_SubscriptionView: View {
    var body: some View {
        VStack {
            Text("SubscriptionView")
        }
    }
}

struct z_SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        JsonPreview {
            z_SubscriptionView()
        }
    }
}
