//
//  ImageCarouselView.swift
//  AirBnb
//
//  Created by Daniel Rodrigues on 20/05/25.
//

import SwiftUI

struct ImageCarouselView: View {
    
    var images = [
        "listin-1",
        "listin-2",
        "listin-3",
        "listin-4",
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ImageCarouselView()
}
