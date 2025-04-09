import SwiftUI
import DesignSystemKit

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Exemple de boutons
            DSButton(title: "Bouton Principal", style: .primary) {
                print("Bouton principal cliqué")
            }
            
            DSButton(title: "Bouton Secondaire", style: .secondary) {
                print("Bouton secondaire cliqué")
            }
            
            DSButton(title: "Bouton Tertiaire", style: .tertiary) {
                print("Bouton tertiaire cliqué")
            }
            
            // Exemple d'icônes
            HStack(spacing: 20) {
                DSIconView(icon: .home)
                DSIconView(icon: .settings)
                DSIconView(icon: .profile)
            }
        }
        .padding()
    }
}

#Preview {
    PreviewView()
} 