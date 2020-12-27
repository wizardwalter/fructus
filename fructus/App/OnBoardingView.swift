//
//  OnBoardingView.swift
//  fructus
//
//  Created by Walter Vannoy on 12/16/20.
//

import SwiftUI

struct OnBoardingView: View {
    //:Mark- Properties
    var fruits: [Fruit] = fruitsData
    
    //:Mark- Body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//:Loop
        }//:Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
    //:Mark- Preview

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
