import SwiftUI

// Vista de botones con varios ejemplos
struct ButtonsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Ejemplo de Botones")
                    .font(.title)
                    .bold()
                
                Text("Esta sección muestra diferentes tipos de botones en SwiftUI.")
                    .padding()
                
                // Botón simple
                Button("Botón Simple") {
                    print("Botón simple pulsado")
                }
                .padding()
                
                // Botón con estilo de borde
                Button("Botón con Borde") {
                    print("Botón con borde pulsado")
                }
                .buttonStyle(BorderedButtonStyle())
                .padding()
                
                // Botón con imagen
                Button(action: {
                    print("Botón con imagen pulsado")
                }) {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.blue)
                        Text("Botón con Imagen")
                    }
                }
                .padding()
                
                // Añade más tipos de botones según los ejemplos
            }
        }
        .navigationTitle("Botones")
    }
}

// Vista de imágenes con modificadores
struct ImagesView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Diferentes formatos de la misma imagen")
                    .font(.headline)
                    .padding()

                VStack {
                    Image("dog1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 180)
                        .border(Color.black, width: 1)
                    Text("Formato ajustado con borde")
                }

                VStack {
                    Image("dog1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 180)
                        .clipped()
                    Text("Formato lleno y recortado")
                }

                VStack {
                    Image("dog1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                    Text("Círculo con borde azul")
                }

                VStack {
                    Image("dog1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 180)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 10)
                    Text("Rectángulo con esquinas redondeadas y sombra")
                }

                VStack {
                    HStack {
                        Image("dog1")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .clipShape(Ellipse())
                            .overlay(Ellipse().stroke(Color.green, lineWidth: 4))
                        Image("dog1")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .clipShape(Rectangle())
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                    }
                    Text("Elipse con borde verde y rectángulo con sombra")
                }
            }
            .padding()
        }
    }
}

// Vista de texto con varios estilos de formateo
struct TextViewsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Ejemplo de Texto")
                    .font(.title)
                    .bold()
                
                Text("Exploración de diferentes maneras de formatear texto en SwiftUI.")
                    .padding()
                
                // Texto con estilo y formateo
                Text("Este texto está en negrita y tiene un color de fondo.")
                    .bold()
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .padding()
                
                // Texto con kerning y subrayado
                Text("Espaciado de caracteres y subrayado.")
                    .kerning(5)
                    .underline()
                    .padding()
                
                // Más ejemplos de texto con diferentes modificadores
            }
        }
        .navigationTitle("Texto")
    }
}

// ContentView con TabView para navegar entre las vistas
struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                ButtonsView()
            }
            .tabItem {
                Image(systemName: "rectangle.grid.1x2.fill")
                Text("Botones")
            }
            
            NavigationView {
                ImagesView()
            }
            .tabItem {
                Image(systemName: "photo")
                Text("Imágenes")
            }
            
            NavigationView {
                TextViewsView()
            }
            .tabItem {
                Image(systemName: "text.alignleft")
                Text("Texto")
            }
        }
    }
}
