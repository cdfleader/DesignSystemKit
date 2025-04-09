import SwiftUI

@available(macOS 11.0, iOS 14.0, *)
public struct DSColors {
    // Couleurs principales
    public let primary: Color
    public let secondary: Color
    public let accent: Color
    
    // Couleurs de texte
    public let textPrimary: Color
    public let textSecondary: Color
    public let textTertiary: Color
    
    // Couleurs de fond
    public let backgroundPrimary: Color
    public let backgroundSecondary: Color
    public let backgroundTertiary: Color
    
    // Couleurs d'état
    public let success: Color
    public let warning: Color
    public let error: Color
    public let info: Color
    
    // Couleurs spécifiques Dracula
    public let cyan: Color
    public let orange: Color
    public let pink: Color
    public let purple: Color
    public let red: Color
    public let yellow: Color
    
    public init(
        primary: Color = Color(red: 189/255, green: 147/255, blue: 249/255), // Violet
        secondary: Color = Color(red: 98/255, green: 114/255, blue: 164/255), // Commentaire
        accent: Color = Color(red: 139/255, green: 233/255, blue: 253/255), // Cyan
        textPrimary: Color = Color(red: 248/255, green: 248/255, blue: 242/255), // Premier plan
        textSecondary: Color = Color(red: 98/255, green: 114/255, blue: 164/255), // Commentaire
        textTertiary: Color = Color(red: 68/255, green: 71/255, blue: 90/255), // Ligne actuelle
        backgroundPrimary: Color = Color(red: 40/255, green: 42/255, blue: 54/255), // Arrière-plan
        backgroundSecondary: Color = Color(red: 68/255, green: 71/255, blue: 90/255), // Ligne actuelle
        backgroundTertiary: Color = Color(red: 98/255, green: 114/255, blue: 164/255), // Commentaire
        success: Color = Color(red: 80/255, green: 250/255, blue: 123/255), // Vert
        warning: Color = Color(red: 241/255, green: 250/255, blue: 140/255), // Jaune
        error: Color = Color(red: 255/255, green: 85/255, blue: 85/255), // Rouge
        info: Color = Color(red: 139/255, green: 233/255, blue: 253/255), // Cyan
        cyan: Color = Color(red: 139/255, green: 233/255, blue: 253/255),
        orange: Color = Color(red: 255/255, green: 184/255, blue: 108/255),
        pink: Color = Color(red: 255/255, green: 121/255, blue: 198/255),
        purple: Color = Color(red: 189/255, green: 147/255, blue: 249/255),
        red: Color = Color(red: 255/255, green: 85/255, blue: 85/255),
        yellow: Color = Color(red: 241/255, green: 250/255, blue: 140/255)
    ) {
        self.primary = primary
        self.secondary = secondary
        self.accent = accent
        self.textPrimary = textPrimary
        self.textSecondary = textSecondary
        self.textTertiary = textTertiary
        self.backgroundPrimary = backgroundPrimary
        self.backgroundSecondary = backgroundSecondary
        self.backgroundTertiary = backgroundTertiary
        self.success = success
        self.warning = warning
        self.error = error
        self.info = info
        self.cyan = cyan
        self.orange = orange
        self.pink = pink
        self.purple = purple
        self.red = red
        self.yellow = yellow
    }
} 