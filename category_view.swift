import SwiftUI

struct CategoryView: View {
    var categoryTitle: String
    @State private var searchText: String = ""
    @State private var places: [Place] = samplePlaces // Placeholder data
    
    var body: some View {
        VStack {
            SearchBar(text: $searchText, placeholder: "Search \(categoryTitle)")
            
            List {
                ForEach(places.filter {
                    searchText.isEmpty ? true : $0.name.contains(searchText)
                }) { place in
                    NavigationLink(destination: DetailView(place: place)) {
                        PlaceRow(place: place)
                    }
                }
            }
            .navigationTitle(categoryTitle)
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    var placeholder: String

   
