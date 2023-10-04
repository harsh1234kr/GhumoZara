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


