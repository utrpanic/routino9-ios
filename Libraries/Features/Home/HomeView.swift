import SwiftUI

struct HomeView: View {
  @Binding var presentSideMenu: Bool

  var body: some View {
    NavigationStack {
      VStack {
        Text("Home View")
      }
      .padding(.horizontal, 24)
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button {
            self.presentSideMenu.toggle()
          } label: {
            Image(systemName: "sidebar.left")
              .foregroundColor(.accentColor)
          }
        }
      }
    }
  }
}

#Preview {
  HomeView(presentSideMenu: .constant(true))
}
