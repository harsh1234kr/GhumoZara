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
            
            


 

