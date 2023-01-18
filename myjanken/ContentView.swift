//
//  ContentView.swift
//  myjanken
//
//  Created by 高橋智也 on 2023/01/18.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0
        
        
        var body: some View {
            
            VStack {
                Spacer()
                if answerNumber == 0 {
                    Text("これからじゃんけんをします！")
                        .padding(.bottom)
                } else if answerNumber == 1 {
                    Image("made gu")
                        .resizable()
                        .scaledToFit()
                        
                    Text("グー").padding(.bottom)
                    
                    
                } else if answerNumber == 2 {
                    Image("made choki")
                        .resizable()
                        .scaledToFit()
                    Text("チョキ").padding(.bottom)
                    
                } else if answerNumber == 3{
                    Image("made pa")
                        .resizable()
                        .scaledToFit()
                    Text("パー").padding(.bottom)
                } else {
                    Image("strongest")
                        .resizable()
                        .scaledToFit()
                    Text("最強").padding(.bottom)
                }
                
                
                
                Button {
                   var newAnswerNumber = 0
                   
                    
                    repeat {
                        newAnswerNumber = Int.random(in: 1...4)
                    } while answerNumber == newAnswerNumber
                    answerNumber = newAnswerNumber
                    
                } label: {
                    Text("じゃんけんをする！").frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .font(.title)
                        .background(Color.red).foregroundColor(Color.white)
                    
                }
            }
            
            
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
