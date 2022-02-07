//
//  MediaLibraryInfo.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/7/22.
//

import SwiftUI

struct MediaLibraryInfo: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("Ищите свою музыку?")
                .font(.system(size: Metric.textFontSizeUpLabel,
                              weight: .bold,
                              design: .default))
            
            Text("Здесь появится купленная вами в iTunes Store музыка.")
                .frame(width: Metric.textWidthDownLabel)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            Spacer()
        }
    }
}


struct MediaLibraryInfo_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibraryInfo()
    }
}

struct Metric {
    static let textFontSizeUpLabel: CGFloat = 25
    static let textWidthDownLabel: CGFloat = 250
}
