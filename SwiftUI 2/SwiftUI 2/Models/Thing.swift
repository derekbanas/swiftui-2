import Foundation
import SwiftUI

struct Thing: Identifiable{
    let id = UUID()
    let name: String
    let description: String
    let imageURL: String
}
