import SwiftUI

struct ContentView: View {
    
    @State private var sliderValueOne: Double = 50.0
    @State private var sliderValueTwo: Double = 50.0
    @State private var sliderValueThree: Double = 50.0
    
    @State private var textFieldOne: String = ""
    @State private var textFieldTwo: String = ""
    @State private var textFieldThree: String = ""
    
    var body: some View {
        
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
                
            }) {
                Text("Save")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
    
}

#Preview {
    ContentView()
    
}
