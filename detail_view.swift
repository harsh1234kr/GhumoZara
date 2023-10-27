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
            // Reviews (Placeholder for now)
            VStack(alignment: .leading) {
                Text("Reviews")
                    .font(.title2)
                    .padding([.leading, .trailing], 20)
                
                ForEach(place.reviews ?? [], id: \.self) { review in
                    Text(review)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                        .padding([.leading, .trailing, .bottom], 20)
                }
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
extension Place {
    // Added some optional fields to the Place struct for demonstration
    var contactInfo: String? { return nil }
    var timings: String? { return nil }
    var price: String? { return nil }
    var reviews: [String]? { return nil }
}


            
            


 

            
           

            
            
            
            
