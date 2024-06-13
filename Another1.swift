//
//  Another1.swift
//  projectAUDIT
//
//  Created by Arjun Mehta on 6/13/24.
//

import SwiftUI

struct Another1: View {
    var body: some View {
        ZStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 430, height: 74)
                    .background(.white)
                    .offset(x: 0, y: 431)
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 63, height: 33)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .offset(x: 0, y: 5)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 2, height: 10)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .offset(x: -18.50, y: -16.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 2, height: 39)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .offset(x: -18.50, y: 0)
                        .rotationEffect(.degrees(90))
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 4, height: 35)
                        .background(.black)
                        .offset(x: -15.50, y: 14)
                        .rotationEffect(.degrees(90))
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 2, height: 10)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .offset(x: 18.50, y: -16.50)
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 20, height: 20)
                        .background(.black)
                        .offset(x: -14.50, y: 9.50)
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 20, height: 20)
                        .background(.black)
                        .offset(x: 14.50, y: 9.50)
                }
                .frame(width: 63, height: 43)
                .offset(x: -91.50, y: 430.50)
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 43.16, height: 42.91)
                        .background(.white)
                        .offset(x: -0.71, y: 0.88)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 15.60, height: 43.73)
                        .background(Color(red: 0.96, green: 0.83, blue: 0.49))
                        .offset(x: -15.28, y: 8.03)
                        .rotationEffect(.degrees(41.86))
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 15.60, height: 43.73)
                        .background(Color(red: 0.96, green: 0.83, blue: 0.49))
                        .offset(x: -15.28, y: 8.03)
                        .rotationEffect(.degrees(41.86))
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 15.51, height: 4.80)
                        .background(Color(red: 0.96, green: 0.65, blue: 0.65))
                        .offset(x: -18.74, y: -15.25)
                        .rotationEffect(.degrees(41.86))
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 15.80, height: 3)
                        .background(Color(red: 0.04, green: 0.64, blue: 0.19))
                        .offset(x: -15.51, y: -12.55)
                        .rotationEffect(.degrees(41.86))
                }
                .frame(width: 53, height: 56)
                .offset(x: 0.50, y: 430)
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 43, height: 43)
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .offset(x: 184.50, y: 430.50)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 4, y: 4
                    )
                ZStack {
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 3, height: 3)
                        .background(.black)
                        .offset(x: -15.35, y: -0.75)
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 3, height: 3)
                        .background(.black)
                        .offset(x: -0.35, y: -0.75)
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 14, height: 3)
                        .background(.black)
                        .offset(x: -6.85, y: 5.25)
                }
                .frame(width: 36.30, height: 20.50)
                .offset(x: 186.15, y: 431.25)
                ZStack {
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 63.90, height: 63.08)
                        .background(Color(red: 0.12, green: 0.32, blue: 1))
                        .offset(x: -8.05, y: 11.48)
                        .rotationEffect(.degrees(18.19))
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 30.53, height: 30.87)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .offset(x: 0.24, y: -0.71)
                    Ellipse()
                        .foregroundColor(.clear)
                        .frame(width: 5.55, height: 5.61)
                        .background(Color(red: 1, green: 0.19, blue: 0.19))
                        .offset(x: 0.24, y: -0.71)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 2.78, height: 25.21)
                        .background(Color(red: 1, green: 0.19, blue: 0.19))
                        .offset(x: 10.80, y: -10.56)
                        .rotationEffect(.degrees(-25.25))
                    Text("A")
                        .font(Font.custom("Inter", size: 7).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: -17.80, y: -16.15)
                    Text("Eb")
                        .font(Font.custom("Inter", size: 7).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: 0.24, y: -23.16)
                    Text("G#")
                        .font(Font.custom("Inter", size: 6).weight(.bold))
                        .foregroundColor(.white)
                        .offset(x: 19.67, y: -15.44)
                }
                .frame(width: 80, height: 80)
                .offset(x: 95, y: 441)
            }
            .frame(width: 430, height: 932)
            .background(.white)
            .offset(x: 0, y: 0)
            ZStack {
                Group {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 120)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: -203.50, y: 0.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 120)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: -179.50, y: 0.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 150)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: -155.50, y: 0.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 190)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: -131.50, y: -7.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 190)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: -108.50, y: -7.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 190)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: -84.50, y: -7.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 190)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: -60.50, y: 7.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 190)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: -36.50, y: 7.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 140)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: -12.50, y: -6.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 140)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: 11.50, y: -6.50)
                }
                Group {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 140)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: 35.50, y: -6.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 140)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: 59.50, y: 21.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 140)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: 83.50, y: 21.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 140)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: 107.50, y: 21.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 140)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: 131.50, y: 21.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 140)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: 155.50, y: 21.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 120)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: 179.50, y: 0.50)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 7, height: 120)
                        .background(Color(red: 0.10, green: 0.10, blue: 0.10))
                        .cornerRadius(10)
                        .offset(x: 203.50, y: 0.50)
                }
            }
            .frame(width: 414, height: 205)
            .offset(x: 0, y: 225.50)
            ZStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 360, height: 462)
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(10)
                        .offset(x: 0, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 310, height: 310)
                        .background(Color(red: 0.46, green: 0.64, blue: 0.50))
                        .cornerRadius(10)
                        .offset(x: 0, y: -50.89)
                    Text("A#")
                        .font(Font.custom("Inter", size: 177).weight(.heavy))
                        .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                        .offset(x: 0, y: -51)
                }
                .frame(width: 360, height: 462)
                .offset(x: 0, y: 0)
                Text("Winkboy")
                    .font(Font.custom("Inter", size: 55).weight(.heavy))
                    .foregroundColor(Color(red: 0.70, green: 0.70, blue: 0.70))
                    .offset(x: 0, y: 172.50)
            }
            .frame(width: 360, height: 462)
            .offset(x: 0, y: -180)
        }
        .frame(width: 430, height: 932)
    }
}

struct Another1_Previews: PreviewProvider {
    static var previews: some View {
        Another1()
    }
}