import Foundation
import SwiftData

@Model
public class Todo {
  public var name: String
  public var date: Day
  public var repeatID: UUID?
  public var completed: Bool
  
  public init(name: String, date: Day, completed: Bool) {
    self.name = name
    self.date = date
    self.completed = completed
  }
}

extension Todo {
  public static var samples: [Todo] = [
    Todo(name: "Language 1", date: Day(), completed: true),
    Todo(name: "iOS App Dev Tutorials - 1 chapter", date: Day(), completed: false),
    Todo(name: "Watch  subscribed YouTube videos", date: Day(), completed: false),
    Todo(name: "Leet Code - 1 problem", date: Day(), completed: false)
  ]
}
