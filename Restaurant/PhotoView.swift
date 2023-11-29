//
//  PhotoView.swift
//  Restaurant
//
//  Created by Omer Cagri Sayir on 29.11.2023.
//

import SwiftUI

struct PhotoView: View {
    @Binding var selectedImage: String
    @Binding var sheetVisible: Bool

    var body: some View {
        ZStack {
            Image(selectedImage).resizable().aspectRatio(contentMode:  .fit)

            VStack {
                HStack {
                    Spacer()

                    Button(action: {
                        sheetVisible = false
                    }, label: {
                        Image(systemName: "x.circle").scaleEffect(2).foregroundColor(.black)
                    }).padding()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    PhotoView(selectedImage: Binding.constant("gallery2"), sheetVisible: Binding.constant(true))
}
