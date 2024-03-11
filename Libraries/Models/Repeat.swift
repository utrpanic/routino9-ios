import Foundation
import SwiftData

@Model
public class Repeat {
  public var id: UUID
  
  public init() {
    self.id = UUID()
  }
}
