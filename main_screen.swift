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
        var body: some View {
        NavigationView {
            List(places) { place in
                NavigationLink(destination: DetailView(place: place)) {
                    HStack {
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading) {
                            Text(place.name).font(.headline)
                            Text(place.description).font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle(category)
        }
    }
}


struct DetailView: View {
    let place: Place

    var body: some View {
        Text(place.name)
    }
}

