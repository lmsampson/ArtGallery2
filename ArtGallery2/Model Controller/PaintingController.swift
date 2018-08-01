//
//  PaintingController.swift
//  ArtGallery2
//
//  Created by Lisa Sampson on 8/1/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class PaintingController {
    
    func loadPaintingFromAssets() {
        for number in 1...12 {
            let string = "Image\(number)"
            guard let image = UIImage(named: string) else { return }
            let painting = Painting(image: image)
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        if painting.isLiked == false {
            painting.isLiked = true
        } else {
            painting.isLiked = false
        }
    }
    
    init() {
        loadPaintingFromAssets()
    }
    
    private(set) var paintings: [Painting] = []
}
