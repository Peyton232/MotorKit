import SwiftUI
import MotorKit

let motor = MotorKit()

struct ContentView: View {
    @State private var titleMessage = motor.state.getTitleMessage()
    @State private var descriptionMessage = motor.state.getDescriptionMessage()
    
    var body: some View {
        VStack {
            Label(titleMessage, systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            Label(descriptionMessage, systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Button("Create Account") {
                let result = motor.createAccount(password: "password")
                if result != nil {
                    print(result!)
                }
//                descriptionMessage = "Balance = " + motor.getBalance().formatted()
//                titleMessage = motor.getAddress()
            }
        }
    }
}
