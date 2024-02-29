import Foundation
import SwiftData

@Model
public class Day {
  public var date: Date
  public var todos: [Todo]
  
  public init(date: Date, todos: [Todo]) {
    self.date = date
    self.todos = todos
  }
}
