import SwiftUI
import shared

struct ContentView: View {
    var body: some View {
        TabView {
            Catalogue()
                .tabItem() {
                    Image(systemName: "house.fill")
                    Text("Магазин")
                }
            Cart()
                .tabItem() {
                    Image(systemName: "cart.fill")
                    Text("Корзина")
                }
            Orders()
                .tabItem() {
                    Image(systemName: "tray.fill")
                    Text("Заказы")
                }
            Profile()
                .tabItem() {
                    Image(systemName: "person.fill")
                    Text("Профиль")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
