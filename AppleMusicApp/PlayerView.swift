//
//  PlayerView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/7/22.
//

import SwiftUI


struct PlayerView: View {
    var body: some View {
        ZStack {
            VStack{
                Divider()

                HStack(alignment: .center) {
                    Image("iconForPlayer")
                        .resizable()
                        .cornerRadius(Metric.cornerRadius)
                        .shadow(radius: Metric.imageShadowRadius)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: Metric.imageWidth, height: Metric.imageHeight)
                    Text("SlipKnot - Dead Memories")
                        .font(Font(.init(.application, size: Metric.iconForPlayerFontSize)))
                    Spacer()

                    Button(action: {
                        print("button pressed")
                    }) {
                        Image(systemName: "play.fill")
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal, Metric.buttonPadding)

                    Button(action: {
                        print("button pressed")
                    }) {
                        Image(systemName: "forward.fill")
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal, Metric.buttonPadding)
                }
                .frame(height: Metric.hStackHeight)
                Divider()
            }
        }
    }

    struct Metric {
        static let imageWidth: CGFloat = 100
        static let imageHeight: CGFloat = 100
        static let cornerRadius: CGFloat = 5
        static let imageShadowRadius: CGFloat = 7
        static let buttonPadding: CGFloat = 6
        static let hStackHeight: CGFloat = 70
        static let iconForPlayerFontSize: CGFloat = 20
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}



