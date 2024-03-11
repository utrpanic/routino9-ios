public enum MainMenu: Int, CaseIterable {
  case home

  public var title: String {
    switch self {
    case .home: return "Home"
    }
  }
}
