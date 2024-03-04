import SwiftUI

struct HomeView: View {
  var body: some View {
    NavigationStack {
      VStack {
        Text("Home View")
      }
      .padding(.horizontal, 24)
      .background(Color.red)
    }
  }
}

#Preview {
  HomeView()
}
