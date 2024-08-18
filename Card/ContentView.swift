//
//  ContentView.swift
//  Card
//
//  Created by Ashwin Tamrakar on 17/08/2024.
//

import SwiftUI

struct ContentView: View {
    
   @State var playerCard = "card7"
   @State var CpuCard = "card13"
    
   @State var playerScore = 0
   @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()

                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(CpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack{
                        Text("Cpu")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
            }.padding()
        }
       
    
    }
    
    func deal(){
        //Randomize player card and cpuCard
        
        var playerCvalue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCvalue)
        
        var cpuCvalue = Int.random(in: 2...14)
        CpuCard = "card" + String(cpuCvalue)
        
        //Update score
        
        if playerCvalue > cpuCvalue {
            playerScore += 1
        }
        else if cpuCvalue > playerCvalue {
            cpuScore += 1
        }
        else{
            playerScore += 1
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
