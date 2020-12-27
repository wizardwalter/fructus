//
//  SourceLinkView.swift
//  fructus
//
//  Created by Walter Vannoy on 12/17/20.
//

import SwiftUI

struct SourceLinkView: View {
    //:Mark - Properties
    
    //:Mark - Body
    var body: some View {
        GroupBox(){
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https//wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}
//:Mark - Preview
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
