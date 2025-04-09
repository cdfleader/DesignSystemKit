import SwiftUI
import DesignSystemKit

@available(macOS 11.0, iOS 14.0, *)
struct PreviewView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Boutons de différentes tailles
                Group {
                    Text("Tailles de boutons")
                        .font(.title)
                        .foregroundColor(Color(red: 248/255, green: 248/255, blue: 242/255))
                        .padding(.top)
                    
                    DSButton(title: "Large", size: .large) {
                        print("Bouton large cliqué")
                    }
                    
                    DSButton(title: "Medium", size: .medium) {
                        print("Bouton medium cliqué")
                    }
                    
                    DSButton(title: "Small", size: .small) {
                        print("Bouton small cliqué")
                    }
                }
                
                // Boutons de différents styles
                Group {
                    Text("Styles de boutons")
                        .font(.title)
                        .foregroundColor(Color(red: 248/255, green: 248/255, blue: 242/255))
                        .padding(.top)
                    
                    DSButton(title: "Primary", style: .primary) {
                        print("Bouton primary cliqué")
                    }
                    
                    DSButton(title: "Secondary", style: .secondary) {
                        print("Bouton secondary cliqué")
                    }
                    
                    DSButton(title: "Tertiary", style: .tertiary) {
                        print("Bouton tertiary cliqué")
                    }
                    
                    DSButton(title: "Success", style: .success) {
                        print("Bouton success cliqué")
                    }
                    
                    DSButton(title: "Warning", style: .warning) {
                        print("Bouton warning cliqué")
                    }
                    
                    DSButton(title: "Error", style: .error) {
                        print("Bouton error cliqué")
                    }
                    
                    DSButton(title: "Info", style: .info) {
                        print("Bouton info cliqué")
                    }
                    
                    DSButton(title: "Cyan", style: .cyan) {
                        print("Bouton cyan cliqué")
                    }
                    
                    DSButton(title: "Orange", style: .orange) {
                        print("Bouton orange cliqué")
                    }
                    
                    DSButton(title: "Pink", style: .pink) {
                        print("Bouton pink cliqué")
                    }
                    
                    DSButton(title: "Purple", style: .purple) {
                        print("Bouton purple cliqué")
                    }
                }
                
                // Exemple d'icônes
                Group {
                    Text("Icônes")
                        .font(.title)
                        .foregroundColor(Color(red: 248/255, green: 248/255, blue: 242/255))
                        .padding(.top)
                    
                    HStack(spacing: 20) {
                        DSIconView(icon: .home)
                        DSIconView(icon: .settings)
                        DSIconView(icon: .profile)
                        DSIconView(icon: .search)
                        DSIconView(icon: .add)
                        DSIconView(icon: .delete)
                    }
                }
            }
            .padding()
            .background(Color(red: 40/255, green: 42/255, blue: 54/255))
        }
    }
}

@available(macOS 11.0, iOS 14.0, *)
#Preview {
    PreviewView()
} 