//
//  SettingsLabelView.swift
//  fructus
//
//  Created by Walter Vannoy on 12/20/20.
//

import SwiftUI

struct SettingsLabelView: View {
    //:Mark - properties
    var labelText: String
    var labelImage: String
    //:Mark - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
    //Mark - Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
