//
//  GalleryView.swift
//  Restaurant
//
//  Created by Omer Cagri Sayir on 29.11.2023.
//

import SwiftUI

struct GalleryView: View {
    
    @State var sheetVisible: Bool = false
    @State var images: [String] = [String]()
    @State var selectedImage: String = ""
    var data = DataService()
    

    var body: some View {
        VStack(alignment: .leading) {
            Text("Gallery").bold().font(.largeTitle).padding(.horizontal)
            
            GeometryReader { proxy in
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(spacing: 0), GridItem(spacing: 0), GridItem(spacing: 0)], spacing: 0) {
                        ForEach(images, id: \.self) { image in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width)/3)
                                .clipped()
                                .onTapGesture {
                                    selectedImage = image
                                    sheetVisible = true
                                }
                        }
                    }
                }
            }
        }.onAppear {
            images = data.getGallery()
        }
        .sheet(isPresented: $sheetVisible, content: {
            PhotoView(selectedImage: $selectedImage, sheetVisible: $sheetVisible)
        })
    }
}

#Preview {
    GalleryView()
}
