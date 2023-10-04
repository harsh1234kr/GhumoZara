import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            AttractionsView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Attractions")
                }
            
            RestaurantsView()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Restaurants")
                }
            
            AccommodationsView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Stays")
                }
        }
    }
}
struct AttractionsView: View {
    // Attraction view code here
    var body: some View {
        Text("List of attractions will appear here.")
    }
}
struct RestaurantsView: View {
    // Restaurants view code here
    var body: some View {
        Text("List of restaurants will appear here.")
    }
}


