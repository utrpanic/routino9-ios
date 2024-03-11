import Models
import SwiftData
import SwiftUI

public struct MainView: View {
  @State private var selectedMenu: MainMenu?

  public init(selectedMenu: MainMenu = .home) {
    self._selectedMenu = State(initialValue: selectedMenu)
  }

  public var body: some View {
    NavigationSplitView(
      preferredCompactColumn: .constant(.detail)
    ) {
      List(selection: self.$selectedMenu) {
        ForEach(MainMenu.allCases, id: \.rawValue) { menu in
          NavigationLink {
            self.mainContentView(menu)
          } label: {
            Text(menu.title)
          }.tag(menu)
        }
      }
    } detail: {
      Group {
        if let menu = self.selectedMenu {
          self.mainContentView(menu)
        } else {
          Text("No Menu Selected")
        }
      }
    }
  }

  @ViewBuilder
  func mainContentView(_ menu: MainMenu) -> some View {
    switch menu {
    case .home:
      HomeController(date: Day())
    }
  }
}

#Preview {
  MainView()
}
