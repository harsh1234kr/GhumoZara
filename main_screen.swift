struct MainView: View {
    var body: some View {
        TabView {
            CategoryView(category: "Attractions", imageName: "star.fill")
                .tabItem {
                    Label("Attractions", systemImage: "star.fill")
                }
            
            CategoryView(category: "Restaurants", imageName: "fork.knife")
                .tabItem {
                    Label("Restaurants", systemImage: "fork.knife")
                }
            
            CategoryView(category: "Stays", imageName: "house.fill")
                .tabItem {
                    Label("Stay", systemImage: "house.fill")
                }
        }
    }
}

struct CategoryView: View {
    let category: String
    let imageName: String
    @State private var places: [Place] = []
    

struct DetailView: View {
    let place: Place

    var body: some View {
        Text(place.name)
    }
}
struct Place: Identifiable {
    var id: Int
    var name: String
    var description: String
}




