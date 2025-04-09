import SwiftUI

@available(macOS 11.0, iOS 14.0, *)
struct ButtonPreview: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Boutons rectangulaires
                Group {
                    Text("Boutons Rectangulaires")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    VStack(spacing: 16) {
                        DSButton(
                            title: "Large Button",
                            style: .success,
                            size: .large,
                            action: { }
                        )
                        
                        DSButton(
                            title: "Medium Button",
                            style: .warning,
                            size: .medium,
                            action: { }
                        )
                        
                        DSButton(
                            title: "Small Button",
                            style: .error,
                            size: .small,
                            action: { }
                        )
                        
                        DSButton(
                            title: "XSmall Button",
                            style: .info,
                            size: .xsmall,
                            action: { }
                        )
                    }
                }
                
                // Boutons carrés
                Group {
                    Text("Boutons Carrés")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    HStack(spacing: 16) {
                        DSButton(
                            title: "",
                            style: .success,
                            size: .squareLarge,
                            shape: .square,
                            icon: DSIcons.plus,
                            action: { }
                        )
                        
                        DSButton(
                            title: "",
                            style: .warning,
                            size: .squareMedium,
                            shape: .square,
                            icon: DSIcons.minus,
                            action: { }
                        )
                        
                        DSButton(
                            title: "",
                            style: .error,
                            size: .squareSmall,
                            shape: .square,
                            icon: DSIcons.checkmark,
                            action: { }
                        )
                        
                        DSButton(
                            title: "",
                            style: .info,
                            size: .squareXsmall,
                            shape: .square,
                            icon: DSIcons.xmark,
                            action: { }
                        )
                    }
                }
                
                // Boutons avec icônes
                Group {
                    Text("Boutons avec Icônes")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    VStack(spacing: 16) {
                        DSButton(
                            title: "Large with Icon",
                            style: .success,
                            size: .large,
                            icon: DSIcons.plus,
                            action: { }
                        )
                        
                        DSButton(
                            title: "Medium with Icon",
                            style: .warning,
                            size: .medium,
                            icon: DSIcons.minus,
                            action: { }
                        )
                        
                        DSButton(
                            title: "Small with Icon",
                            style: .error,
                            size: .small,
                            icon: DSIcons.checkmark,
                            action: { }
                        )
                    }
                }
                
                // Boutons en forme de pilule
                Group {
                    Text("Boutons en Pilule")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    VStack(spacing: 16) {
                        DSButton(
                            title: "Large Pill",
                            style: .success,
                            size: .large,
                            shape: .pill,
                            action: { }
                        )
                        
                        DSButton(
                            title: "Medium Pill",
                            style: .warning,
                            size: .medium,
                            shape: .pill,
                            action: { }
                        )
                        
                        DSButton(
                            title: "Small Pill",
                            style: .error,
                            size: .small,
                            shape: .pill,
                            action: { }
                        )
                    }
                }
                
                // Boutons avec différentes couleurs
                Group {
                    Text("Boutons avec Couleurs")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    VStack(spacing: 16) {
                        DSButton(
                            title: "Cyan Button",
                            style: .cyan,
                            size: .medium,
                            action: { }
                        )
                        
                        DSButton(
                            title: "Orange Button",
                            style: .orange,
                            size: .medium,
                            action: { }
                        )
                        
                        DSButton(
                            title: "Pink Button",
                            style: .pink,
                            size: .medium,
                            action: { }
                        )
                        
                        DSButton(
                            title: "Purple Button",
                            style: .purple,
                            size: .medium,
                            action: { }
                        )
                    }
                }
            }
            .padding()
        }
        .background(Color(red: 40/255, green: 42/255, blue: 54/255))
    }
}

@available(macOS 11.0, iOS 14.0, *)
struct ButtonPreview_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPreview()
    }
} 