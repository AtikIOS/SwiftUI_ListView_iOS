//
//  DetailsView.swift
//  SwiftUI_ListView
//
//  Created by Atik Hasan on 3/20/25.
//

import SwiftUI

struct DetailsView: View {
    let birdsModel: BirdsModel
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Image(birdsModel.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 60, height: 300)
                    .clipped()
                    .cornerRadius(8)
                    .offset(y: -130)
                    .padding(.bottom, -100)
            }
            VStack(alignment: .center) {
                Text(birdsModel.imageName)
                    .font(.title)
                    .foregroundColor(.black)
                Text(birdsModel.title)
                    .font(.headline)
                    .foregroundColor(.gray)
                Text(birdsModel.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    DetailsView(birdsModel: BirdsModel(imageName: "sample", title: "Sample Title", subtitle: "Sample Subtitle"))
}
