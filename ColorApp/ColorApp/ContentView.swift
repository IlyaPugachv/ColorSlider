import SwiftUI
import Combine

struct ContentView: View {
    @State private var sliderValueOne: Double = 50.0
    @State private var sliderValueTwo: Double = 50.0
    @State private var sliderValueThree: Double = 50.0
    
    @State private var textFieldOne: String = ""
    @State private var textFieldTwo: String = ""
    @State private var textFieldThree: String = ""
    
    @State private var backgroundColor: Color = .white
    
    var body: some View {
        ZStack {
            backgroundColor
            
            VStack {
                ColorRectangle(color: Color(red: sliderValueOne / 100, green: sliderValueTwo / 100, blue: sliderValueThree / 100), width: 350, height: 100)
                    .cornerRadius(30)
                
                ColorRectangle(color: Color(red: sliderValueOne / 100, green: sliderValueTwo / 100, blue: sliderValueThree / 100), width: 350, height: 100)
                    .cornerRadius(30)
                    .padding(10)
                
                ColorSlider(sliderValue: $sliderValueOne, textFeild: $textFieldOne, color: .white, accentColor: .red)
                
                ColorSlider(sliderValue: $sliderValueTwo, textFeild: $textFieldTwo, color: .white, accentColor: .green)
                
                ColorSlider(sliderValue: $sliderValueThree, textFeild: $textFieldThree, color: .white, accentColor: .blue)
                
                Button(action: {
                    backgroundColor = Color(red: sliderValueOne / 100, green: sliderValueTwo / 100, blue: sliderValueThree / 100)
                }) {
                    Text("Save")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
        }.onReceive(Just(textFieldOne)) { value in
            if let number = Double(value) {
                sliderValueOne = number
                backgroundColor = Color(red: sliderValueOne / 100, green: sliderValueTwo / 100, blue: sliderValueThree / 100)
            }
        }.onReceive(Just(textFieldTwo)) { value in
            if let number = Double(value) {
                sliderValueTwo = number
                backgroundColor = Color(red: sliderValueOne / 100, green: sliderValueTwo / 100, blue: sliderValueThree / 100)
            }
        }.onReceive(Just(textFieldThree)) { value in
            if let number = Double(value) {
                sliderValueThree = number
                backgroundColor = Color(red: sliderValueOne / 100, green: sliderValueTwo / 100, blue: sliderValueThree / 100)
            }
        }
    }
}

#Preview {
    ContentView()
}
