//
//  File.swift
//  Flixter
//
//  Created by Dinh Viet Kien on 05/03/2023.
//

import Foundation
struct MoviesResponse: Decodable {
    let results: Array<Movie>
}
struct Movie: Decodable {
    let original_title: String
    let overview: String
    let poster_path: String
    let backdrop_path: String
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}
//extension Movie {
//
//    /// An array of mock tracks
//    static var mockMovie: [Movie]  = [
//        Movie(title: "Knock at the Cabin",
//              overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
//              posterURLw200: URL(string:"https://image.tmdb.org/t/p/w200/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!,
//              backgroundURL: URL(string:"https://image.tmdb.org/t/p/original/22z44LPkMyf5nyyXvv8qQLsbom.jpg")!,
//              voteAverage: 6.6,
//              voteCount: 751,
//              popularity: 4286.16
//             ),
//        Movie(title: "Black Panther: Wakanda Forever",
//              overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
//              posterURLw200: URL(string:"https://image.tmdb.org/t/p/w200//sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
//              backgroundURL: URL(string:"https://image.tmdb.org/t/p/original/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!,
//              voteAverage: 7.4,
//              voteCount: 3783,
//              popularity: 2949.117),
//        Movie(title: "Puss in Boots: The Last Wish",
//              overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
//              posterURLw200: URL(string:"https://image.tmdb.org/t/p/w200/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
//              backgroundURL: URL(string:"https://image.tmdb.org/t/p/original/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!,
//              voteAverage: 8.4,
//              voteCount: 4235,
//              popularity: 2820.651),
//        Movie(title: "Plane",
//              overview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
//              posterURLw200: URL(string:"https://image.tmdb.org/t/p/w200/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!,
//              backgroundURL: URL(string:"https://image.tmdb.org/t/p/original/9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg")!,
//              voteAverage: 6.9,
//              voteCount: 754,
//              popularity: 2200.205),
//        Movie(title: "Little Dixie",
//              overview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
//              posterURLw200: URL(string:"https://image.tmdb.org/t/p/w200/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!,
//              backgroundURL: URL(string:"https://image.tmdb.org/t/p/original/k4V6EvpcOsu8CX10JD0H53lFXLq.jpg")!,
//              voteAverage: 6.3,
//              voteCount: 44,
//              popularity: 1698.096)
//    ]
//
//    // We can now access this array of mock tracks anywhere like this:
//    // let tracks = Tracks.mockTracks
//}
