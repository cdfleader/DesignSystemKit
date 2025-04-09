import SwiftUI

@available(macOS 10.15, iOS 13.0, *)
public struct DSTheme: Sendable {
    public struct Colors: Sendable {
        public let primary: Color
        public let secondary: Color
        public let background: Color
        public let text: Color
        
        public init(
            primary: Color = .blue,
            secondary: Color = .gray,
            background: Color = .white,
            text: Color = .black
        ) {
            self.primary = primary
            self.secondary = secondary
            self.background = background
            self.text = text
        }
    }
    
    public struct Typography: Sendable {
        public let title: Font
        public let body: Font
        public let caption: Font
        
        public init(
            title: Font = .title,
            body: Font = .body,
            caption: Font = .caption
        ) {
            self.title = title
            self.body = body
            self.caption = caption
        }
    }
    
    public let colors: Colors
    public let typography: Typography
    
    public init(
        colors: Colors = Colors(),
        typography: Typography = Typography()
    ) {
        self.colors = colors
        self.typography = typography
    }
}

@available(macOS 10.15, iOS 13.0, *)
public extension EnvironmentValues {
    var dsTheme: DSTheme {
        get { self[DSThemeKey.self] }
        set { self[DSThemeKey.self] = newValue }
    }
}

@available(macOS 10.15, iOS 13.0, *)
private struct DSThemeKey: EnvironmentKey {
    static let defaultValue = DSTheme()
} 