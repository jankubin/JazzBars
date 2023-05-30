//
//  LocationDetailView.swift
//  JazzBarsPrague
//
//  Created by Jan Kubín on 28.04.2023.
//

import SwiftUI
import MapKit


struct LocationDetailView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    let location: Location
    
    
    @State private var region: MKCoordinateRegion?
    @State private var showingRoute = false
    
    var body: some View {
        ScrollView {
            VStack {
               imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                    navigateButton
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationViewModel())
    }
}

extension LocationDetailView {
    
    private var imageSection: some View {
        TabView {
            ForEach(location.imageNames, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            HStack {
            
                if let url = URL(string: location.link) {
                    Link(destination: url) {
                        HStack {
                            Image(systemName: "network")
                                .frame(width: 17, height: 25)
                        }
                    }
                    .frame(height: 35)
                    .shadow(radius: 4)
                    .buttonStyle(.borderedProminent)
                }
                
                if let url = URL(string: location.instagram) {
                    Link(destination: url) {
                        HStack {
                            Image("instagram")
                                .foregroundColor(.blue)
                                .frame(width: 15, height: 15)
                        }
                    }
                    .frame(height: 35)
                    .shadow(radius: 4)
                    .buttonStyle(.borderedProminent)
                }
                
                if let url = URL(string: location.facebook) {
                    Link(destination: url) {
                        HStack {
                            Image("Facebook")
                                .foregroundColor(.blue)
                                .frame(width: 15, height: 15)
                        }
                    }
                    .frame(height: 35)
                    .shadow(radius: 4)
                    .buttonStyle(.borderedProminent)
                }
                
                if let url = URL(string: location.program) {
                    Link("Program", destination: url)
                        .font(.subheadline)
                        .frame(height: 40)
                        .shadow(radius: 4)
                        .buttonStyle(.borderedProminent)
                        
                }
            }
            
            
        }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: Binding.constant(region ?? MKCoordinateRegion()), annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .shadow(radius: 10)
                
            }
        }
        .onAppear {
            // set initial region
            region = MKCoordinateRegion(center: location.coordinates, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        }
        .onTapGesture {
            // show navigation dialog
            let destination = MKMapItem(placemark: MKPlacemark(coordinate: location.coordinates))
            destination.name = location.name
            let currentLocation = MKMapItem.forCurrentLocation()
            currentLocation.name = "Current Location"
            MKMapItem.openMaps(with: [currentLocation, destination], launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
        }
        .allowsHitTesting(false)
        .aspectRatio(1, contentMode: .fit)
        .cornerRadius(30)
    }



    
    private var backButton: some View {
        Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }

    }
    
    private var navigateButton: some View {
        Button {
            openMap(location)
        } label: {
            Text("Navigate")
                .font(.headline)
                .frame(height: 35, alignment: .leading)
                .frame(maxWidth: .infinity)
                .shadow(radius: 4)
                
        }
        .buttonStyle(.borderedProminent)
    }
    
    private func openMap(_ location: Location) {
        let destination = location.coordinates
        let placemark = MKPlacemark(coordinate: destination)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = location.name
        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
    }
    
}

