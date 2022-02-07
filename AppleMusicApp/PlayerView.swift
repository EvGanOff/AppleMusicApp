//
//  PlayerView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/7/22.
//

import SwiftUI

struct PlayerView: View {

    @State private var button = true

    var body: some View {
        VStack{
            Divider()
            HStack(alignment: .center) {
                Image("iconForPlayer")
                    .padding(.horizontal, 20)
                    .frame(width: 70.0, height: 70.0)
                    .scaledToFill()
                    .clipped()
                    .padding([.leading, .trailing, .top, .bottom], 6)
                    .cornerRadius(25)
                Text("SlipKnot - Dead Memories")
                    .font(Font(.init(.application, size: 20)))
                Spacer()
                Button(action: {
                    print("button pressed")
                }) {
                    Image(systemName: "play.fill")
                }
                .foregroundColor(.black)
                .padding(.horizontal, 15)

                Button(action: {
                    print("button pressed")
                }) {
                    Image(systemName: "forward.fill")
                }
                .foregroundColor(.black)
                .padding(.horizontal, 15)
            }
            Divider()
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
