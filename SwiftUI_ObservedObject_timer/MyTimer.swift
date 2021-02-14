
import Foundation
import SwiftUI
import Combine

class MyTimer: ObservableObject {
    //@ObervedObjet를 사용하기위해 @Published를 할당
    @Published var value: Int = 0
    
    init() {
                                    //간격        //반복되기때문에 true   //timer을 in 해준다
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
}
