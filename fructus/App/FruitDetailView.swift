//
//  FruitDetailView.swift
//  fructus
//
//  Created by Walter Vannoy on 12/17/20.
//

import SwiftUI

struct FruitDetailView: View {
    //: Mark- Properties
    var fruit: Fruit
    //: Mark- Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    //header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                    //title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                    //headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                    //nutrients
                        FruitNeutrientsView(fruit: fruit)
                    //subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        
                    //description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                    //link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//:VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//:VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: Scroll
            .edgesIgnoringSafeArea(.top)
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
    //: Mark- Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
