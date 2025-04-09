import SwiftUI

@available(macOS 11.0, iOS 14.0, *)
public struct DSTypography {
    // Tailles de police
    public let displayLarge: Font
    public let displayMedium: Font
    public let displaySmall: Font
    
    public let headlineLarge: Font
    public let headlineMedium: Font
    public let headlineSmall: Font
    
    public let titleLarge: Font
    public let titleMedium: Font
    public let titleSmall: Font
    
    public let bodyLarge: Font
    public let bodyMedium: Font
    public let bodySmall: Font
    
    public let labelLarge: Font
    public let labelMedium: Font
    public let labelSmall: Font
    
    public init(
        displayLarge: Font = .system(size: 57, weight: .regular),
        displayMedium: Font = .system(size: 45, weight: .regular),
        displaySmall: Font = .system(size: 36, weight: .regular),
        headlineLarge: Font = .system(size: 32, weight: .regular),
        headlineMedium: Font = .system(size: 28, weight: .regular),
        headlineSmall: Font = .system(size: 24, weight: .regular),
        titleLarge: Font = .system(size: 22, weight: .medium),
        titleMedium: Font = .system(size: 16, weight: .medium),
        titleSmall: Font = .system(size: 14, weight: .medium),
        bodyLarge: Font = .system(size: 16, weight: .regular),
        bodyMedium: Font = .system(size: 14, weight: .regular),
        bodySmall: Font = .system(size: 12, weight: .regular),
        labelLarge: Font = .system(size: 14, weight: .medium),
        labelMedium: Font = .system(size: 12, weight: .medium),
        labelSmall: Font = .system(size: 11, weight: .medium)
    ) {
        self.displayLarge = displayLarge
        self.displayMedium = displayMedium
        self.displaySmall = displaySmall
        self.headlineLarge = headlineLarge
        self.headlineMedium = headlineMedium
        self.headlineSmall = headlineSmall
        self.titleLarge = titleLarge
        self.titleMedium = titleMedium
        self.titleSmall = titleSmall
        self.bodyLarge = bodyLarge
        self.bodyMedium = bodyMedium
        self.bodySmall = bodySmall
        self.labelLarge = labelLarge
        self.labelMedium = labelMedium
        self.labelSmall = labelSmall
    }
} 