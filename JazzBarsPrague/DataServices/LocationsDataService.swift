//
//  LocationsDataService.swift
//  JazzBarsPrague
//
//  Created by Jan Kubín on 27.04.2023.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Jazz Dock",
            cityName: "Prague",
            coordinates: CLLocationCoordinate2D(latitude: 50.077357, longitude: 14.408389),
            description: "Cool lounge bar for live jazz music in a modern glass building that feels like it is on the river.",
            imageNames: [
                "JazzDock01",
                "JazzDock02",
                "JazzDock03",
                "JazzDock04",
            ],
            link: "https://www.jazzdock.cz/en/",
            program: "https://www.jazzdock.cz/en/program",
            instagram: "https://www.instagram.com/jazzdock.cz/",
            facebook: "https://www.facebook.com/jazzdock"),
        Location(
            name: "Reduta Jazz Club",
            cityName: "Prague",
            coordinates: CLLocationCoordinate2D(latitude: 50.082027, longitude: 14.418513),
            description: "Reduta Jazz Club is a music club and theatre scene in Prague, Czech Republic. It is situated on Národní street in the centre of the city, close to the National Theatre. The club is particularly famous for having hosted an impromptu saxophone performance by American president Bill Clinton in 1994.",
            imageNames: [
                "Reduta04",
                "Reduta01",
                "Reduta02",
                "Reduta03",
            ],
            link: "http://www.redutajazzclub.cz/en",
            program: "http://www.redutajazzclub.cz/program-en",
            instagram: "https://www.instagram.com/reduta_jazz_club/",
            facebook: "https://www.facebook.com/reduta"),
        Location(
            name: "U Staré paní",
            cityName: "Prague",
            coordinates: CLLocationCoordinate2D(latitude: 50.084924, longitude: 14.419867),
            description: "Jazzklub U Staré Paní specializes in both progressive and traditional Czech jazz artists and serves excellent cocktails, a wide selection of premium spirits, and locally brewed Prague beer from Vinohrady.",
            imageNames: [
                "UStarePani01",
                "UStarePani02",
                "UStarePani03",
                "UStarePani04",
            ],
            link: "https://ustarepani.club/en/",
            program: "https://www.ustarepani.club/en/program",
            instagram: "https://www.instagram.com/clubustarepani/",
            facebook: "https://www.facebook.com/ClubUStarePani"),
        Location(
            name: "Jazz Club Ungelt",
            cityName: "Prague",
            coordinates: CLLocationCoordinate2D(latitude: 50.087895, longitude: 14.423442),
            description: "2-story venue with a stage for live music & an upstairs eatery with a menu of classic comfort food.",
            imageNames: [
                "Ungelt01",
                "Ungelt02",
                "Ungelt03",
                "Ungelt04",
            ],
            link: "https://jazzungelt.cz/index/index/lang/en",
            program: "https://jazzungelt.cz/program/index/lang/en",
            instagram: "https://www.instagram.com/jazzungelt/",
            facebook: "https://www.facebook.com/jazzungelt"),
        Location(
            name: "AghaRTA",
            cityName: "Prague",
            coordinates: CLLocationCoordinate2D(latitude: 50.086405, longitude: 14.422114),
            description: "14th-century basement venue for local beers & a leading lineup of international jazz artists.",
            imageNames: [
                "Agharta01",
                "Agharta02",
                "Agharta03",
                "Agharta04",
            ],
            link: "https://www.agharta.cz/index.php?p=index&site=agharta_en",
            program: "https://www.agharta.cz/index.php?p=e-tickets&site=agharta_en",
            instagram: "https://www.instagram.com/aghartajazzclub/",
            facebook: "https://www.facebook.com/aghartajazzcentrum"),
        Location(
            name: "Jazz Republic",
            cityName: "Prague",
            coordinates: CLLocationCoordinate2D(latitude: 50.084165, longitude: 14.418542),
            description: "Pizza & pasta restaurant with a Czech wine list & a jazz club with nightly live acts.",
            imageNames: [
                "JazzRepublic01",
                "JazzRepublic02",
                "JazzRepublic03",
                "JazzRepublic04",
            ],
            link: "https://www.jazzrepublic.cz/en",
            program: "https://www.jazzrepublic.cz/en",
            instagram: "https://www.instagram.com/jazzrepublic/",
            facebook: "https://www.facebook.com/JazzRepublic.cz"),
        Location(
            name: "U Malého Glena",
            cityName: "Prague",
            coordinates: CLLocationCoordinate2D(latitude: 50.086815, longitude: 14.403705),
            description: "Every night concerts feature the best local jazz & blues musicians and musical groups of various sizes. Mondays are dedicated to Blues. Since 1995 until July 2015 we presented  the “longest running blues gig in Prague”  with Stan the Man Bohemian Blues Band are “...the real Thing” according to The New York Times.",
            imageNames: [
                "Glen01",
                "Glen02",
                "Glen03",
                "Glen04",
            ],
            link: "https://malyglen.cz/en/pages",
            program: "https://malyglen.cz/en/show/program",
            instagram: "https://www.instagram.com/umalehoglena/",
            facebook: "https://www.facebook.com/groups/malyglen"),
        Location(
            name: "The Loop Jazz Club",
            cityName: "Prague",
            coordinates: CLLocationCoordinate2D(latitude: 50.055033, longitude: 14.454546),
            description: "The mobile jazz club, after three years of operating in the premises of the Občanská plovárna, where it hosted both domestic and international jazz musicians during concerts as part of the PRAGUE PROMS festival and beyond, is moving its activities to the ČNSO Hostivař studios.",
            imageNames: [
                "JazzLoop01",
                "JazzLoop02",
                "JazzLoop03",
                "JazzLoop04",
            ],
            link: "https://www.loopjazzclub.cz/en",
            program: "https://www.loopjazzclub.cz/en/event-calendar",
            instagram: "https://www.instagram.com/theloopjazzclub/",
            facebook: "https://www.facebook.com/loopjazzclub")
    ]
    
}


