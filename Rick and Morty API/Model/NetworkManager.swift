//
//  NetworkManager.swift
//  Rick and Morty API
//
//  Created by Sergey on 08.10.2021.
//

import Foundation


class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchData(from urlString: String, with complition: @escaping (Character) -> Void) {
        
        guard let url = URL(string: urlString) else { return }
        
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print(error)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let character = try JSONDecoder().decode(Character.self, from: data)
                
                DispatchQueue.main.async {
                    complition(character)
                }
                
                
            } catch let error {
                print(error)
            }
            
        }.resume()
    }
}



class ImageManager {
    
    static let shared = ImageManager()
    
    private init() {}
    
    func fetchImage(from url: String?) -> Data? {
        guard let stringURL = url else { return nil}
        guard let imageURL = URL(string: stringURL) else { return nil }
        return try? Data(contentsOf: imageURL)
    }
}





























