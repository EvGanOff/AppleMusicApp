//
//  PlayerView.swift
//  AppleMusicApp
//
//  Created by Евгений Ганусенко on 2/7/22.
//

import SwiftUI

struct PlayerView: View {
    @State var pointToStart = 5.0
    @State var finishPoint = 290
    @State private var isEditing = false
    @State var isTappedPlay: Bool = false
    @State var isTappedNext: Bool = false
    @State var soundLevel = 0.5
    @State var offset: CGFloat = 0


    @Binding var isShowed: Bool

    var widthFrame = UIScreen.main.bounds.width

    var body: some View {
        VStack {
            Spacer()

            // MARK: - Not full screen
            HStack(alignment: .center) {
                Image("iconForPlayer")
                    .resizable()
                    .cornerRadius(Metric.cornerRadius)
                    .shadow(radius: Metric.imageShadowRadius)
                    .frame(
                        width: isShowed ? Metric.imageFullScreenWidth : Metric.imageWidth,
                        height: isShowed ? Metric.imageFullScreenHeight : Metric.imageHeight)
                    .padding(.leading, isShowed ? 0 : 10)

                if isShowed != true {
                    Text("SlipKnot - Dead Memories")
                        .font(Font(.init(.application, size: Metric.textPlayerFontSize)))

                    Spacer()

                    Button(action: tapPlayButton) {
                        Image(systemName: isTappedPlay ? "pause.fill" : "play.fill")
                            .resizable()
                            .frame(
                                width: Metric.smallImageButton,
                                height: Metric.smallImageButton)
                            .foregroundColor(.primary)
                    }

                    Button(action: tapNextButton) {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .frame(width: Metric.smallImageButton, height: Metric.smallImageButton)
                            .foregroundColor(.primary)
                            .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 20))
                    }
                }
            }

            Spacer()

            // MARK: - Full screen
            if isShowed {

                VStack {
                    HStack(alignment: .center) {
                        VStack(alignment: .leading) {
                            Text("Dead Memories")
                                .font(.title)
                                .foregroundColor(.primary)

                            Text("SlipKnot")
                                .font(Font(.init(.application, size: Metric.textPlayerFontSize)))
                                .foregroundColor(.secondary)
                        }

                        Spacer()

                        Button(action: { print("Tap Button") }) {
                            Image(systemName: "ellipsis.circle.fill")
                                .foregroundColor(.primary)
                                .font(.title)
                        }
                    }
                    .padding(.bottom, 20)

                    VStack {
                        Slider(value: $pointToStart, in: Double(0)...Double(finishPoint)) { editing in
                            isEditing = editing
                        }
                        .accentColor(.primary)

                        HStack {
                            Text("\(ChengeTrackTime( pointToStart))")
                                .foregroundColor(.primary)
                            Spacer()
                            Text(" - \(ChengeTrackTime(Double(finishPoint) -  pointToStart))")
                                .foregroundColor(.primary)
                        }
                    }
                    .padding(.bottom, 40)

                    HStack {
                        Spacer()

                        Button(action: { print("Tap Button") }) {
                            Image(systemName: "backward.fill")
                                .resizable()
                                .foregroundColor(.primary)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: Metric.buttonFrameWidthAndHeigt, height: Metric.buttonFrameWidthAndHeigt)
                        }

                        Spacer()

                        Button(action: {
                            tapPlayButton()
                        }) {
                            Image(systemName: isTappedPlay ? "pause.fill" : "play.fill")
                                .resizable()
                                .foregroundColor(.primary)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: Metric.buttonFrameWidthAndHeigt, height: Metric.buttonFrameWidthAndHeigt)
                        }

                        Spacer()

                        Button(action: { print("Tap Button") }) {
                            Image(systemName: "forward.fill")
                                .resizable()
                                .foregroundColor(.primary)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: Metric.buttonFrameWidthAndHeigt, height: Metric.buttonFrameWidthAndHeigt)
                        }

                        Spacer()
                    }
                    .padding(.bottom, 50)

                    HStack {
                        Image(systemName: "speaker.fill")
                            .foregroundColor(.primary)

                        Spacer()

                        Slider(value: $soundLevel, in: 0...1, step: 0.0625)
                            .font(.title2)

                        Spacer()

                        Image(systemName: "speaker.wave.2.fill")
                            .foregroundColor(.primary)
                    }
                    .padding(.bottom, 20)

                    HStack {
                        Spacer()

                        Button(action: { print("Tap Button") }) {
                            Image(systemName: "arrow.up.message")
                                .foregroundColor(.primary)
                                .font(.title2)
                        }

                        Spacer()

                        Button(action: { print("Tap Button") }) {
                            Image(systemName: "airplayaudio")
                                .foregroundColor(.primary)
                                .font(.title2)
                        }

                        Spacer()

                        Button(action: { print("Tap Button") }) {
                            Image(systemName: "list.bullet")
                                .foregroundColor(.primary)
                                .font(.title2)
                        }

                        Spacer()
                    }
                    .padding(.bottom, 20)

                }
                .frame(width: widthFrame - 40)
            }
        }
        .frame(maxHeight: isShowed ? .infinity : 80)
        .frame(width: widthFrame)
        .background(
            VStack(spacing: 0) {
                BlurEffect(style: .systemChromeMaterial)
            }
            .onTapGesture {
                withAnimation(.spring()){ isShowed = true }
            })
        .gesture(DragGesture().onEnded(onEnded(value:)).onChanged(onChanged(value:)))
    }

    struct Metric {
        static let imageWidth: CGFloat = 55
        static let imageHeight: CGFloat = 55
        static let smallImageButton: CGFloat = 25

        static let imageFullScreenWidth: CGFloat = 250
        static let imageFullScreenHeight: CGFloat = 250

        static let buttonFrameWidthAndHeigt: CGFloat = 40

        static let cornerRadius: CGFloat = 10
        static let imageShadowRadius: CGFloat = 7
        static let textPlayerFontSize: CGFloat = 20
    }
}

// MARK: - Action Button

extension PlayerView {

    private func ChengeTrackTime(_ time: Double) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60

        return String(format:"%02i.%02i", minutes, seconds)
    }

    func onChanged(value: DragGesture.Value) {
        if value.translation.height > 0 && isShowed{
            offset = value.translation.height
        }
    }

    func onEnded(value: DragGesture.Value) {
        withAnimation(.interactiveSpring(response: 0.3)) {
            if value.translation.height > widthFrame {
                isShowed = false
            }
            offset = 0
        }
    }

    private func tapPlayButton() {
        isTappedPlay = !isTappedPlay
    }

    private func tapNextButton() {
        isTappedNext = !isTappedNext
    }

    struct BlurEffect: UIViewRepresentable {
        var style: UIBlurEffect.Style = .systemMaterial

        func makeUIView(context: Context) -> UIVisualEffectView {
            return UIVisualEffectView(effect: UIBlurEffect(style: style))
        }

        func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
            uiView.effect = UIBlurEffect(style: style)
        }
    }
}
