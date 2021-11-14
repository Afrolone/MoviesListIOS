//
//  MoviesCollection.swift
//  MoviesList
//
//  Created by Ant Colony on 13. 11. 2021..
//

//func getImage() {}

import UIKit

enum MoviesCollection {
    static let movies: [Movie] = [
        Movie(name: "No Time To Dye",releaseYear: 2021,shortDesc: "A James Bond Movie",longDesc: "James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking for help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.", image: UIImage(named: "noTimeToDie")!),
        Movie(name: "Squid Game",releaseYear: 2021, shortDesc: "Another gem of the Korean cinema", longDesc: "Hundreds of cash-strapped players accept a strange invitation to compete in children's games. Inside, a tempting prize awaits with deadly high stakes. A survival game that has a whopping 45.6 billion-won prize at stake.", image: UIImage(named: "squidGame")!),
        Movie(name: "Dune",releaseYear: 2021,shortDesc: "Feature adaptation of Frank Herbert's science fiction novel", longDesc: "Feature adaptation of Frank Herbert's science fiction novel, about the son of a noble family entrusted with the protection of the most valuable asset and most vital element in the galaxy.", image: UIImage(named: "dune")!),
    ]
}
