//
//  FruitCardView.swift
//  fructus
//
//  Created by Walter Vannoy on 12/11/20.
//

import SwiftUI
struct FruitCardView: View {
    //Mark:- Properties
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false


    //Mark:- Body
    var body: some View {
        ZStack{
        VStack (spacing: 20){
        //: Fruit Image
            Image(fruit.image)
            .resizable()
            .scaledToFit()
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            .scaleEffect(isAnimating ? 1.0 : 0.6)
        //:Fruit title
            Text(fruit.title)
            .foregroundColor(Color.white)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
        //:Fruit Headline
            Text(fruit.headline)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
                .frame(maxWidth: 480)
        //:Button: Start
            StartButtonView()
         }//:VStack
      }//:ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 1.0)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors),
            startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//Mark:- Previews
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height:640))
    }
}
