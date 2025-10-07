//
//  ContentView.swift
//  CODE ALONG BUTTONS TEXTFIELDS TOGGLE
//
//  Created by Tamez, Elan - Student on 9/17/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var pressCount = 0
    @State private var name = ""
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack(spacing: 25) {
            
           
            Text(" Birthday Tracker ")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)
                .padding(.top, 40)
            
           
            Image(systemName: "gift.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.pink)
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Enter a Name:")
                    .font(.headline)
                TextField("Name", text: $name)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
            }
            
            // Date Picker
            VStack(alignment: .leading, spacing: 8) {
                Text("Select Birthday:")
                    .font(.headline)
                DatePicker("", selection: $selectedDate, displayedComponents: [.date])
                    .labelsHidden()
                    .padding(.horizontal)
            }
            
            Divider()
                .padding(.horizontal)
            

            VStack(spacing: 10) {
                Text("\(name.isEmpty ? "" : name)'s Birthday is:")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.red)
                
                Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(15)
            .shadow(radius: 4)
            
            Spacer()
            
            
            Button(action: {
                pressCount += 1
            }) {
                Text("Celebrate 🎈 (\(pressCount))")
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

