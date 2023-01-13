import UIKit

import Foundation
//// MARK: - RickAndMortyElement
//struct RickAndMortyElement: Codable {
//    let id: Int
//    let name, status, species, type: String
//    let gender: String
//    let origin, location: Location
//    let image: String
//    let episode: [String]
//    let url: String
//    let created: String
//}
//
//// MARK: - Location
//struct Location: Codable {
//    let name: String
//    let url: String
//}
//
//typealias RickAndMorty = [RickAndMortyElement]
//
//
//struct CreateInfo{
//    private func parseJS(data: Data)->RickAndMorty?{
//        let decoder = JSONDecoder()
//        guard let res = try? decoder.decode(RickAndMorty.self, from: data) else { return nil }
//        return res
//    }
//    func createData(idPers: [Int]){
//        
//        let idPersStr = idPers.map{String($0)}.joined(separator: ",")
//        var startUrl = "https://rickandmortyapi.com/api/character/"+idPersStr
//        guard let url = URL(string: startUrl) else { return }
//        URLSession.shared.dataTask(with: url, completionHandler: {data, resp, err in
//            guard let data  = data else { return }
//            guard let result = parseJS(data: data) else { return }
//            print(result[Int.random(in: 0...idPers.count-1)].name)
//        }).resume()
//        
//        
//        
//    }
//}
//
//var k = CreateInfo()
//k.createData(idPers: [1,2,100,15,222,111])
var arr = [Int]()
var k = Int.random(in: 0...10)
for i in 0...k-1{
    print("Yes")
    arr.append(Int.random(in: 1...10))
}

Array(Set(arr))
