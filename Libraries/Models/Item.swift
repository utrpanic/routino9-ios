import Foundation
import SwiftData

@Model
final public class Item {
  public var timestamp: Date

  public init(timestamp: Date) {
    self.timestamp = timestamp
  }
}
