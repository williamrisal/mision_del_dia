//
//  ClassementComponent.swift
//  misión-del-dia
//
//  Created by William Risal on 17/11/2023.
//

import SwiftUI

struct ClassementComponent: View {
    struct Player: Identifiable {
        let id = UUID()
        let MainName: String
        let Pseudo: String
        let score: Int
        let scoreVue: Int
        let profileImageName: String
    }
    
    let players = [
        Player(MainName: "@Bastien13", Pseudo: "Bastiendu13", score: 150, scoreVue: 400000, profileImageName: ""),
        Player(MainName: "@matheo93", Pseudo: "MatheoLaMeteo", score: 200, scoreVue: 2000, profileImageName: ""),
        Player(MainName: "@thibault69", Pseudo: "ThibaultLeRigolo", score: 180, scoreVue: 30000 ,profileImageName: ""),
        Player(MainName: "@AngellinaBFF14", Pseudo: "AngelinatoSmile", score: 2, scoreVue: 1000 ,profileImageName: ""),
        Player(MainName: "@johanGaming90", Pseudo: "GaminRTX", score: 3945, scoreVue: 25000 ,profileImageName: ""),
    ]
    @State private var isClassementDetailVisible = false
    @State var ButtonActivate: Bool

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "trophy")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                Text("Classement")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.bottom, 30)

            VStack {
                ForEach(Array((ButtonActivate ? Array(players.prefix(3)) : Array(players)).sorted(by: { $0.scoreVue > $1.scoreVue }).enumerated()), id: \.1.id) { index, player in
                    ZStack {
                        HStack {
                            HStack{
                                HStack{
                                    Image(systemName: "person")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.white)
                                }
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 2.5))
                                VStack{
                                    Image(systemName: "medal.fill")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(index == 0 ? .yellow : index == 1 ? .gray : index == 2 ? .brown : .white.opacity(0))
                                        .padding(.leading, -25)
                                        .padding(.top, 45)
                                }
                            }
                            VStack(alignment: .leading) {
                                Text(player.MainName)
                                    .foregroundColor(.white)
                                    .bold()
                                    .padding(.leading, -15)
                                Text(player.Pseudo)
                                    .foregroundColor(.white)
                                    .opacity(0.9)


                                ButtonGainComponent(TextButton: String(player.score))

                            }
                            Spacer()
                            VStack{
                                Image(systemName: "play.circle").resizable(resizingMode: .stretch)
                                    .frame(width : 40, height: 40)
                                    .foregroundColor(.white)
                                    .opacity(0.8)
                                Text("\(player.scoreVue / 1000)" + " K")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
                .listRowSeparatorTint(.white)
                .listRowBackground(Color.clear)
                 if ButtonActivate {
                    HStack{
                        Spacer()
                        Button(action: {
                            isClassementDetailVisible.toggle()
                        }) {
                            Text("voir le classement")
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .padding(.vertical, 1)
                                .padding(.horizontal, 20)
                                .bold()
                        }
                        .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 80)
                                .stroke(Color.white, lineWidth: 2)
                                .opacity(0.4)
                        )
                        Spacer()
                    }
                    .listRowBackground(Color.clear)
                }
            }
            .padding(.top, -30)
            .scrollContentBackground(.hidden)
            .scrollDisabled(true)
            .sheet(isPresented: $isClassementDetailVisible) {
                ClassementDetaileView()
            }
        }
    }
}
