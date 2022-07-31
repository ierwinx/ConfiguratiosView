import SwiftUI

struct ContentView: View {
    
    @State private var bActivaNotificacion = false
    @State private var bActivaModoOscuro = 0
    
    private var arrModos = ["Modo dia", "Modo oscuro"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Preferencias")) {
                    Toggle(isOn: $bActivaNotificacion) {
                        Text("Activa Notificaciones")
                    }
                    
                    Picker(selection: $bActivaModoOscuro, label: Text("Selecciona modo")) {
                        ForEach(0..<self.arrModos.count, id: \.self) {
                            Text(self.arrModos[$0])
                        }
                    }
                }
                Section(header: Text("Version")) {
                    HStack {
                        Text("iOS Version")
                        Spacer()
                        Text("15.6")
                    }
                }
                
            }
            .navigationBarTitle("Ajustes Generales")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
