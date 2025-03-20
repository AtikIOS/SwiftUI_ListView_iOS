//
//  ContentView.swift
//  SwiftUI_ListView
//
//  Created by Atik Hasan on 3/20/25.
//
import SwiftUI

struct ContentView: View {
    let birds = BirdsModel.birdsArray
    var body: some View {
        NavigationView {
            List(birds) { bird in
                NavigationLink(destination: DetailsView(birdsModel: bird)) {
                    HStack {
                        VStack {
                            Image(bird.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .cornerRadius(5)
                                .padding(.leading,0)
                            Text(bird.imageName)
                                .padding(.top, 5)
                                .font(.system(size: 10))
                        }
                        .frame(width: 80, alignment: .leading)
                        
                        VStack(alignment: .leading) {
                            Text(bird.title)
                                .font(.headline)
                            Text(bird.subtitle)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }.padding(.leading, 5)
                    }
                    .padding(.vertical, 5)
                }
            }
            .navigationTitle("Animals")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
