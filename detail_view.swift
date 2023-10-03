import SwiftUI
import MapKit

struct DetailView: View {   
    var place: Place
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), // Default coordinates
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
        var body: some View {
        ScrollView {
            // Image
            Image(systemName: "photo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            // Title
            Text(place.name)
                .font(.largeTitle)
                .padding([.leading, .trailing], 20)
             // Description
            Text(place.description)
                .padding([.leading, .trailing, .bottom], 20)
            
            // Additional Info Section
            VStack(alignment: .leading, spacing: 10) {
                Text("Contact: \(place.contactInfo ?? "N/A")")
                Text("Timings: \(place.timings ?? "N/A")")
                Text("Price: \(place.price ?? "Free")")
            }
            .padding([.leading, .trailing, .bottom], 20)
            // Map
            Map(coordinateRegion: $region)
                .frame(height: 200)
                .cornerRadius(10)
                .padding([.leading, .trailing], 20)
            
            
