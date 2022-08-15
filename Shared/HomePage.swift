//
//  HomePage.swift
//  SwiftUI-Weather
//
//  Created by Ari Johnson on 8/15/22.
//

import Foundation
import SwiftUI

struct HomePage: View {
    static let darkBlue: Color = .init(
        red: %20,
        green: %40,
        blue: %80
    )
    static let lightBlue: Color = .init(
        red: %37,
        green: %190,
        blue: %203
    )

    var body: some View {
        ZStack {
            Self.darkBlue.edgesIgnoringSafeArea(.all)

            VStack {
                Image(systemName: "lightbulb.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 60)
                    .foregroundColor(.yellow)

                Spacer()

                Text("Woooooooooo!")
                    .font(.system(size: 30))
                    .foregroundColor(.white)

                Spacer()
                Spacer()

                NavigationLink("Werp", destination: ContentView())
                    .foregroundColor(.white)

                Button("This is a button") {}
                    .frame(maxWidth: .infinity)
                    .padding(10)
                    .background(Self.lightBlue)
                    .cornerRadius(15)
                    .foregroundColor(Self.darkBlue)

                Button("This is another button!") {}
                    .frame(maxWidth: .infinity)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Self.lightBlue, lineWidth: 1)
                    )
                    .foregroundColor(Self.lightBlue)

            }
            .frame(
                width: 250,
                height: 400,
                alignment: .init(
                    horizontal: .center,
                    vertical: .center
                )
            )
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomePage()
        }
    }
}
