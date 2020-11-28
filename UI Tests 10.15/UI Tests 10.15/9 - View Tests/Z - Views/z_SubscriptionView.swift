import SwiftUI
import SwiftUIJson
import Combine
 
struct z_SubscriptionView: View {
    
    var body: some View {
        VStack {
            Text("SubscriptionView")
//            SubscriptionView(content: Text("content"), publisher: PassthroughSubject<Any, Never>().eraseToAnyPublisher()) { _ in print("action") }
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
