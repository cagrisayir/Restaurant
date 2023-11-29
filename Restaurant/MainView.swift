//
//  ContentView.swift
//  Restaurant
//
//  Created by Omer Cagri Sayir on 29.11.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            MenuView()
                .tabItem {
                    VStack{
                        Image(systemName: "menucard")
                        Text("Menu")
                    }
                
            }
            
            AboutView()
                .tabItem { 
                    VStack{
                        Image(systemName: "info.circle.fill")
                        Text("About")
                    }
                }
            
            GalleryView()
                .tabItem {
                    VStack{
                        Image(systemName: "photo")
                        Text("Gallery")
                    }
                    
                }
            
        }
        
    }
}

#Preview {
    MainView()
}
