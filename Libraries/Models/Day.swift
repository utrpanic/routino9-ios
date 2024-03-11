import Foundation
import SwiftData

public struct Day: Codable, Equatable {
  public let year: Int
  public let month: Int
  public let day: Int
  public let weekday: Weekday

  public init() {
    let calendar = Locale.current.calendar
    let dateComponents = calendar.dateComponents(
      [.year, .month, .day, .weekday],
      from: .now
    )
    self.year = dateComponents.year!
    self.month = dateComponents.month!
    self.day = dateComponents.day!
    self.weekday = Weekday(rawValue: dateComponents.weekday!)!
  }
}

public enum Weekday: Int, Codable {
  case sun = 1
  case mon = 2
  case tue = 3
  case wed = 4
  case thu = 5
  case fri = 6
  case sat = 7
}
