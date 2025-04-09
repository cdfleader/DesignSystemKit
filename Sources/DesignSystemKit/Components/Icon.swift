import SwiftUI

@available(macOS 11.0, iOS 14.0, *)
public enum DSIcon: String {
    case home = "house.fill"
    case settings = "gear"
    case profile = "person.fill"
    case search = "magnifyingglass"
    case add = "plus"
    case delete = "trash"
    
    public var image: Image {
        Image(systemName: rawValue)
    }
}

@available(macOS 11.0, iOS 14.0, *)
public struct DSIconView: View {
    let icon: DSIcon
    let size: CGFloat
    let color: Color
    
    public init(
        icon: DSIcon,
        size: CGFloat = 24,
        color: Color = .primary
    ) {
        self.icon = icon
        self.size = size
        self.color = color
    }
    
    public var body: some View {
        icon.image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: size, height: size)
            .foregroundColor(color)
    }
} 