//
    // Project: ColourPickerApp
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct ContentView: View {
    @State private var selectedColor: Color = .red // Start with a default color
    @State private var secondSelectedColor: Color = .blue
    var body: some View {
    

        ZStack {

            LinearGradient(gradient: Gradient(colors: [selectedColor, secondSelectedColor]), startPoint: .top, endPoint: .bottom)
                .opacity(0.65)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Circle()
                    .fill(selectedColor)
                    .frame(width: 100, height: 100)
                    .shadow(radius: 5)
                
                ColorPicker("Pick your first Color", selection: $selectedColor)
                    

                Text("Your First color!")
                    .font(.title)
                    .bold()
                    .foregroundStyle(selectedColor)
                ColorPicker("Pick your Second Color", selection: $secondSelectedColor)
                Text("Your Second color!")
                    .font(.title)
                    .bold()
                    .foregroundStyle(secondSelectedColor)
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
