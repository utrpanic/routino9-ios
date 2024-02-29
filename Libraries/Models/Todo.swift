import SwiftData

@Model
public class Todo {
  public var title: String
  public var completed: Bool
  
  public init(title: String, completed: Bool) {
    self.title = title
    self.completed = completed
  }
}
