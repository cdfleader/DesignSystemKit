import SwiftUI
import UIKit
import AudioToolbox

@available(macOS 11.0, iOS 14.0, *)
public struct DSButton: View {
    public enum Style {
        case primary
        case secondary
        case tertiary
        case success
        case warning
        case error
        case info
        case cyan
        case orange
        case pink
        case purple
    }
    
    public enum Size {
        case large
        case medium
        case small
        case xsmall
        case squareLarge
        case squareMedium
        case squareSmall
        case squareXsmall
    }
    
    public enum Shape {
        case rectangle
        case square
        case pill
    }
    
    let title: String
    let style: Style
    let size: Size
    let shape: Shape
    let icon: Image?
    let action: () -> Void
    
    @State private var isPressed = false
    
    public init(
        title: String = "",
        style: Style = .primary,
        size: Size = .medium,
        shape: Shape = .rectangle,
        icon: Image? = nil,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.style = style
        self.size = size
        self.shape = shape
        self.icon = icon
        self.action = action
    }
    
    public var body: some View {
        Button(action: {
            vibrate()
            withAnimation(.easeOut(duration: 0.1)) {
                isPressed = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.spring()) {
                    isPressed = false
                }
            }
            action()
        }) {
            ZStack {
                // Fond principal avec ombre
                backgroundShape
                    .fill(overlayColor)
                    .shadow(color: shadowColor, radius: 0, x: 0, y: 4)
                
                // Contenu
                HStack(spacing: 8) {
                    if let icon = icon {
                        icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: iconSize, height: iconSize)
                    }
                    
                    if !title.isEmpty {
                        if #available(iOS 16.0, macOS 13.0, *) {
                            Text(title)
                                .font(typography)
                                .foregroundColor(foregroundColor)
                                .textCase(.uppercase)
                                .tracking(-0.02)
                        } else {
                            Text(title)
                                .font(typography)
                                .foregroundColor(foregroundColor)
                                .textCase(.uppercase)
                        }
                    }
                }
                .padding(.horizontal, horizontalPadding)
                .padding(.vertical, verticalPadding)
            }
            .frame(width: buttonWidth, height: buttonHeight)
            .overlay(
                backgroundShape
                    .stroke(borderColor, lineWidth: borderWidth)
            )
        }
        .scaleEffect(isPressed ? 0.95 : 1.0)
    }
    
    private var backgroundShape: RoundedRectangle {
        switch shape {
        case .rectangle:
            return RoundedRectangle(cornerRadius: cornerRadius)
        case .square:
            return RoundedRectangle(cornerRadius: cornerRadius)
        case .pill:
            return RoundedRectangle(cornerRadius: buttonHeight / 2)
        }
    }
    
    private var typography: Font {
        switch size {
        case .large:
            return .system(size: 16, weight: .bold)
        case .medium:
            return .system(size: 14, weight: .bold)
        case .small:
            return .system(size: 12, weight: .bold)
        case .xsmall:
            return .system(size: 10, weight: .bold)
        case .squareLarge, .squareMedium, .squareSmall, .squareXsmall:
            return .system(size: 12, weight: .bold)
        }
    }
    
    private var buttonHeight: CGFloat {
        switch size {
        case .large:
            return 48
        case .medium:
            return 40
        case .small:
            return 32
        case .xsmall:
            return 24
        case .squareLarge:
            return 48
        case .squareMedium:
            return 40
        case .squareSmall:
            return 32
        case .squareXsmall:
            return 24
        }
    }
    
    private var buttonWidth: CGFloat? {
        switch size {
        case .squareLarge:
            return 48
        case .squareMedium:
            return 40
        case .squareSmall:
            return 32
        case .squareXsmall:
            return 24
        default:
            return nil
        }
    }
    
    private var iconSize: CGFloat {
        switch size {
        case .large, .squareLarge:
            return 24
        case .medium, .squareMedium:
            return 20
        case .small, .squareSmall:
            return 16
        case .xsmall, .squareXsmall:
            return 14
        }
    }
    
    private var horizontalPadding: CGFloat {
        switch size {
        case .large:
            return 24
        case .medium:
            return 16
        case .small:
            return 12
        case .xsmall:
            return 8
        case .squareLarge, .squareMedium, .squareSmall, .squareXsmall:
            return 0
        }
    }
    
    private var verticalPadding: CGFloat {
        switch size {
        case .large:
            return 12
        case .medium:
            return 10
        case .small:
            return 8
        case .xsmall:
            return 6
        case .squareLarge, .squareMedium, .squareSmall, .squareXsmall:
            return 0
        }
    }
    
    private var cornerRadius: CGFloat {
        switch size {
        case .large:
            return 13
        case .medium:
            return 10
        case .small:
            return 8
        case .xsmall:
            return 6
        case .squareLarge:
            return 8
        case .squareMedium:
            return 6
        case .squareSmall:
            return 4
        case .squareXsmall:
            return 3
        }
    }
    
    private var backgroundColor: Color {
        switch style {
        case .primary:
            return Color(red: 40/255, green: 42/255, blue: 54/255) // Background
        case .secondary:
            return Color(red: 40/255, green: 42/255, blue: 54/255) // Background
        case .tertiary:
            return .clear
        case .success:
            return Color(red: 40/255, green: 42/255, blue: 54/255) // Background
        case .warning:
            return Color(red: 40/255, green: 42/255, blue: 54/255) // Background
        case .error:
            return Color(red: 40/255, green: 42/255, blue: 54/255) // Background
        case .info:
            return Color(red: 40/255, green: 42/255, blue: 54/255) // Background
        case .cyan:
            return Color(red: 40/255, green: 42/255, blue: 54/255) // Background
        case .orange:
            return Color(red: 40/255, green: 42/255, blue: 54/255) // Background
        case .pink:
            return Color(red: 40/255, green: 42/255, blue: 54/255) // Background
        case .purple:
            return Color(red: 40/255, green: 42/255, blue: 54/255) // Background
        }
    }
    
    private var overlayColor: Color {
        switch style {
        case .primary:
            return Color(red: 189/255, green: 147/255, blue: 249/255) // Purple
        case .secondary:
            return Color(red: 98/255, green: 114/255, blue: 164/255) // Comment
        case .tertiary:
            return .clear
        case .success:
            return Color(red: 50/255, green: 200/255, blue: 80/255) // Green plus sombre
        case .warning:
            return Color(red: 200/255, green: 200/255, blue: 0/255) // Yellow plus sombre
        case .error:
            return Color(red: 255/255, green: 85/255, blue: 85/255) // Red
        case .info:
            return Color(red: 0/255, green: 150/255, blue: 200/255) // Cyan plus sombre
        case .cyan:
            return Color(red: 0/255, green: 150/255, blue: 200/255) // Cyan plus sombre
        case .orange:
            return Color(red: 220/255, green: 120/255, blue: 0/255) // Orange plus sombre
        case .pink:
            return Color(red: 255/255, green: 121/255, blue: 198/255) // Pink
        case .purple:
            return Color(red: 150/255, green: 100/255, blue: 220/255) // Purple plus sombre
        }
    }
    
    private var shadowColor: Color {
        switch style {
        case .tertiary:
            return .clear
        case .primary:
            return Color(red: 120/255, green: 100/255, blue: 200/255) // Purple plus sombre
        case .secondary:
            return Color(red: 50/255, green: 60/255, blue: 100/255) // Comment plus sombre
        case .success:
            return Color(red: 0/255, green: 150/255, blue: 40/255) // Green plus sombre
        case .warning:
            return Color(red: 150/255, green: 150/255, blue: 0/255) // Yellow plus sombre
        case .error:
            return Color(red: 180/255, green: 0/255, blue: 0/255) // Red plus sombre
        case .info:
            return Color(red: 0/255, green: 100/255, blue: 150/255) // Cyan plus sombre
        case .cyan:
            return Color(red: 0/255, green: 100/255, blue: 150/255) // Cyan plus sombre
        case .orange:
            return Color(red: 180/255, green: 80/255, blue: 0/255) // Orange plus sombre
        case .pink:
            return Color(red: 180/255, green: 0/255, blue: 80/255) // Pink plus sombre
        case .purple:
            return Color(red: 100/255, green: 60/255, blue: 180/255) // Purple plus sombre
        }
    }
    
    private var foregroundColor: Color {
        switch style {
        case .primary, .secondary, .success, .warning, .error, .info, .cyan, .orange, .pink, .purple:
            return Color(red: 248/255, green: 248/255, blue: 242/255) // Foreground
        case .tertiary:
            return Color(red: 248/255, green: 248/255, blue: 242/255) // Foreground
        }
    }
    
    private var borderColor: Color {
        switch style {
        case .tertiary:
            return Color(red: 248/255, green: 248/255, blue: 242/255) // Foreground
        default:
            return .clear
        }
    }
    
    private var borderWidth: CGFloat {
        switch style {
        case .tertiary:
            return 1
        default:
            return 0
        }
    }
    
    private func vibrate() {
        #if os(iOS)
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.prepare()
        generator.impactOccurred()
        
        // Son de clic léger
        AudioServicesPlaySystemSound(1104) // ID du son de clic léger
        #endif
    }
} 