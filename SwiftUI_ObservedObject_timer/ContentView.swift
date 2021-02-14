//
//  ContentView.swift
//  SwiftUI_ObservedObject_timer
//
//  Created by 김선중 on 2021/02/14.
//

import SwiftUI

struct ContentView: View {
    
    //@state를 지우고 @ObervedObject로 바꿔줌
    @ObservedObject var myTimer = MyTimer()
    
    var body: some View {
        Text("\(self.myTimer.value)")
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
