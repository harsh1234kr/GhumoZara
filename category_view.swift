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
    var placeholder: String var body: some View {
        HStack {
            TextField(placeholder, text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if !text.isEmpty {
                            Button(action: {
                                text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
               
   
