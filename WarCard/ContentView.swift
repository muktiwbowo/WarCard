//
//  ContentView.swift
//  WarCard
//
//  Created by Mukti Wibowo on 23/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var scorePlayer = 0
    @State var scoreCPU = 0
    @State var cardLeft = 2
    @State var cardRight = 4
    
    var body: some View {
        ZStack{
            Image("background")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card"+String(cardLeft))
                    Spacer()
                    Image("card"+String(cardRight))
                    Spacer()
                }
                Spacer()
                Button(action: {
                    cardLeft = Int.random(in: 2...14)
                    cardRight = Int.random(in: 2...14)
                    if cardLeft == cardRight {
                        scorePlayer += 1
                    }else{
                        scoreCPU += 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text(String(scorePlayer)).padding(.vertical)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text(String(scoreCPU)).padding(.vertical)
                    }
                    Spacer()
                }.foregroundColor(.white).font(.title)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
