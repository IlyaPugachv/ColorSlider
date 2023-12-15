import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    @Binding var textFeild: String
    
    var color: Color
    var accentColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
            Slider(value: $sliderValue, in: 0...100, step: 1)
                .accentColor(accentColor)
            
            TextField("", text: $textFeild, onCommit: updateSliderValue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 50)
                .keyboardType(.numberPad)
                .padding(.leading, 10)
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
    
    func updateSliderValue() {
        if let number = Double(textFeild) {
            sliderValue = number
        }
    }
}

