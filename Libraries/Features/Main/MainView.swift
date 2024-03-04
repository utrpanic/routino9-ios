import Models
import SwiftData
import SwiftUI

public struct MainView: View {
  @State private var selectedMenuIndex: Int

  public init(
    selectedMenuIndex: Int = 0
  ) {
    self._selectedMenuIndex = State(initialValue: selectedMenuIndex)
  }

  public var body: some View {
    NavigationSplitView(
      preferredCompactColumn: .constant(.detail)
    ) {
      List {
        ForEach(Menu.allCases, id: \.rawValue) { menu in
          NavigationLink {
            switch menu {
            case .home: HomeView()
            }
          } label: {
            Text(menu.title)
          }
        }
      }
    } detail: {
      Text("Select an item")
    }
  }
}

#Preview {
  MainView(selectedMenuIndex: 0)
}
