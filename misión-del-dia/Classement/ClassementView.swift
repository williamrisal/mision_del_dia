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
        Player(MainName: "@test1", Pseudo: "teston", score: 150, scoreVue: 400000, profileImageName: "profile1"),
        Player(MainName: "@test2", Pseudo: "testaa", score: 200, scoreVue: 2000, profileImageName: "profile2"),
        Player(MainName: "@test3", Pseudo: "testii", score: 180, scoreVue: 30000 ,profileImageName: "profile3"),
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                    BackgroundView()
                
                List(players.sorted(by: { $0.scoreVue > $1.scoreVue })) { player in
                    HStack {
                        Image(player.profileImageName)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                        VStack(alignment: .leading) {
                            Text(player.MainName)
                            Text(player.Pseudo)
                                .foregroundColor(.gray)
                                .padding(.leading, 15)
                            Button(action: {}) {
                                Text(String(player.score) + "💰")
                                    .font(.title3)
                                    .padding(4)
                                    .foregroundColor(.white)
                                    .background(.orange)
                                    .border(Color.white , width: 1)
                                    .cornerRadius(10)
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

                }.listStyle(SidebarListStyle())
                .background(.clear)
                
                .navigationTitle("🏆 Classement")
            }
        }
    }
}


struct ClassementView_Previews: PreviewProvider {
    static var previews: some View {
        ClassementView()
    }
}
