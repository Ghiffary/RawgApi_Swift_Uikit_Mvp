//
//  GameDetailRequest.swift
//  GameList
//
//  Created by MacBook Air on 26/03/23.
//

import Foundation
import Foundation

struct GameRequest {
    
    func getGame(query: String, completion: @escaping (Result<GameDetail, Error>) -> Void) {
        let resourceString = query
        guard let resourceURL = URL(string: resourceString) else {
            fatalError("Error")
        }
        let request = URLRequest(url: resourceURL)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                print("DataTask Error: \(error.localizedDescription)")
            }
            guard let data = data, response != nil else {
                print("Empty Data")
                return
            }
            do {
                let decoder = JSONDecoder()
                
                let gameResult = try decoder.decode(GameDetail.self, from: data)
                DispatchQueue.main.async {
                    completion(.success(gameResult))
                }
            } catch {
                completion(.failure(error))
            }}.resume()
    }
    
}
