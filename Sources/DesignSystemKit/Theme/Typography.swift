import SwiftUI

@available(macOS 11.0, iOS 14.0, *)
public struct DSTypography {
    // Tailles de police pour Feather Bold (titres)
    public let displayLarge: Font
    public let displayMedium: Font
    public let displaySmall: Font
    
    public let headlineLarge: Font
    public let headlineMedium: Font
    public let headlineSmall: Font
    
    public let titleLarge: Font
    public let titleMedium: Font
    public let titleSmall: Font
    
    // Tailles de police pour DIN Next Rounded (corps de texte)
    public let bodyLarge: Font
    public let bodyMedium: Font
    public let bodySmall: Font
    
    public let labelLarge: Font
    public let labelMedium: Font
    public let labelSmall: Font
    
    public init(
        // Feather Bold - Display (≥ 30px)
        displayLarge: Font = .custom("Feather-Bold", size: 57, relativeTo: .largeTitle),
        displayMedium: Font = .custom("Feather-Bold", size: 45, relativeTo: .largeTitle),
        displaySmall: Font = .custom("Feather-Bold", size: 36, relativeTo: .largeTitle),
        
        // Feather Bold - Headline (≥ 30px)
        headlineLarge: Font = .custom("Feather-Bold", size: 32, relativeTo: .title),
        headlineMedium: Font = .custom("Feather-Bold", size: 28, relativeTo: .title),
        headlineSmall: Font = .custom("Feather-Bold", size: 24, relativeTo: .title),
        
        // Feather Bold - Title (≥ 30px)
        titleLarge: Font = .custom("Feather-Bold", size: 22, relativeTo: .title2),
        titleMedium: Font = .custom("Feather-Bold", size: 16, relativeTo: .title3),
        titleSmall: Font = .custom("Feather-Bold", size: 14, relativeTo: .headline),
        
        // DIN Next Rounded - Body
        bodyLarge: Font = .custom("DINNextRoundedLTPro-Regular", size: 16, relativeTo: .body),
        bodyMedium: Font = .custom("DINNextRoundedLTPro-Regular", size: 14, relativeTo: .body),
        bodySmall: Font = .custom("DINNextRoundedLTPro-Regular", size: 12, relativeTo: .caption),
        
        // DIN Next Rounded - Label
        labelLarge: Font = .custom("DINNextRoundedLTPro-Medium", size: 14, relativeTo: .body),
        labelMedium: Font = .custom("DINNextRoundedLTPro-Medium", size: 12, relativeTo: .caption),
        labelSmall: Font = .custom("DINNextRoundedLTPro-Medium", size: 11, relativeTo: .caption2)
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
    
    // Méthodes d'aide pour le style de texte
    public func featherBoldStyle(for text: String) -> some View {
        Text(text)
            .font(.custom("Feather-Bold", size: 30))
            .tracking(-0.02) // Suivi : -20
            .lineSpacing(1.1) // Interligne : 110%
            .textCase(.lowercase) // Toujours en minuscules
            .multilineTextAlignment(.leading) // Alignement à gauche
    }
    
    public func dinNextRoundedStyle(for text: String) -> some View {
        Text(text)
            .font(.custom("DINNextRoundedLTPro-Regular", size: 16))
            .lineSpacing(1.1)
            .multilineTextAlignment(.leading)
    }
} 