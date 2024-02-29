public enum Menu: Int, CaseIterable {
  case home

  public var title: String {
    switch self {
    case .home: return "Home"
    }
  }

  public var iconName: String {
    switch self {
    case .home: return "home"
    }
  }
}
