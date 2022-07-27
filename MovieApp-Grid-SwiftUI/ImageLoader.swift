//
//  ImageLoader.swift
//  MovieApp-Grid-SwiftUI
//
//  Created by Mitya Kim on 7/26/22.
//

import Foundation

class ImageLoader: ObservableObject {
    
    @Published var downloadedData: Data?
    
    func downloadImage(url: String) {
        guard let imageURL = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: imageURL) { data, _, error in
            
            guard let data = data, error == nil else { fatalError("Invalid URL for Image") }
            DispatchQueue.main.async {
                self.downloadedData = data
            }
        }.resume()
    }
}
