//
//  ClassementView.swift
//  misión-del-dia
//
//  Created by William Risal on 14/11/2023.
//

import SwiftUI

struct ClassementView: View {
    struct Player: Identifiable {
        let id = UUID()
        let MainName: String
        let Pseudo: String
        let score: Int
        let scoreVue: Int
        let profileImageName: String
    }
    
    let players = [
        Player(MainName: "@test1", Pseudo: "teston", score: 150, scoreVue: 400000, profileImageName: ""),
        Player(MainName: "@test2", Pseudo: "testaa", score: 200, scoreVue: 2000, profileImageName: ""),
        Player(MainName: "@test3", Pseudo: "testii", score: 180, scoreVue: 30000 ,profileImageName: ""),
        Player(MainName: "@test4", Pseudo: "testuu", score: 2, scoreVue: 1000 ,profileImageName: ""),
        Player(MainName: "@test5", Pseudo: "testee", score: 3945, scoreVue: 25000 ,profileImageName: ""),
    ]
    
    var body: some View {
        
        ZStack {
            List {
                ForEach (Array(players.sorted(by: { $0.scoreVue > $1.scoreVue }).enumerated()), id: \.1.id) { index, player in
                    ZStack {
                        HStack {
                            HStack{
                                HStack{
                                    Image(systemName: "person")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.gray)
                                }
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                                VStack{
                                    Image("grade\(index + 1)")
                                        .resizable()
                                        .frame(width: 20, height: 35)
                                        .foregroundColor(.gray)
                                        .padding(.leading,-25)
                                        .padding(.top, 40)
                                }
                            }
                            VStack(alignment: .leading) {
                                Text(player.MainName)

                                Text(player.Pseudo)
                                    .foregroundColor(.gray)
                                    .padding(.leading, 15)
                                Button(action: {}) {
                                    Text(String(player.score) + " 💰")
                                        .font(.title3)
                                        .padding(4)
                                        .foregroundColor(.white)
                                        .background(.orange)
                                        .cornerRadius(40)
                                }
                            }
                            Spacer()
                            VStack{
                                Image(systemName: "play.circle").resizable(resizingMode: .stretch)
                                    .frame(width : 40, height: 40)
                                    .foregroundColor(.gray)
                                Text("\(player.scoreVue / 1000)" + "K")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
            }
            .scrollContentBackground(.hidden)
        }
    }
}


struct ClassementView_Previews: PreviewProvider {
    static var previews: some View {
        ClassementView()
    }
}
