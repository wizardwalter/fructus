//
//  ContentView.swift
//  fructus
//
//  Created by Walter Vannoy on 12/11/20.
//

import SwiftUI

struct ContentView: View {
    //:Mark - properties
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    //:Mark - body
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView (fruit: item)){
                        FruitRowView(fruit: item)
                          .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }//:BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
    //:Mark - preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(fruits: fruitsData)
        }
    }
}
