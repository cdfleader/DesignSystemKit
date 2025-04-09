import DesignSystemKit

// Utilisation du bouton
DSButton(title: "Mon Bouton", style: .primary) {
    // Action
}

// Utilisation d'une icône
DSIconView(icon: .home, size: 24, color: .blue)

// Configuration du thème
let customTheme = DSTheme(
    colors: DSTheme.Colors(
        primary: .red,
        secondary: .gray,
        background: .white,
        text: .black
    )
)
