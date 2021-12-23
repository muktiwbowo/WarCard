//
//  ContentView.swift
//  WarCard
//
//  Created by Mukti Wibowo on 23/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Button(action: {
                    print("clicked")
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                        Text("0").padding(.vertical)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text("0").padding(.vertical)
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
