//
//  MenuView.swift
//  Restaurant
//
//  Created by Omer Cagri Sayir on 29.11.2023.
//

import SwiftUI

struct MenuView: View {
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()

    var body: some View {
        VStack(alignment: .leading) {
            Text("Menu").font(.largeTitle).bold()
            List(menuItems) { item in
                MenuListRow(item: item)
            }
            .listStyle(.plain)
            .onAppear {
                menuItems = dataService.getData()
            }
        }
    }
}

#Preview {
    MenuView()
}
