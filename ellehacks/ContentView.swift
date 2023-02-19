////
////  ContentView.swift
////  DeviceActivityExample
////
////
//
import SwiftUI

struct ContentView: View {

    @State private var page = 1

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if page == 1 {
                    Page1View()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                } else if page == 2 {
                    Page2View()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                } else if page == 3 {
                    Page3View()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                } else if page == 4 {
                    Page4View()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
            .gesture(
                DragGesture(minimumDistance: 20, coordinateSpace: .global)
                    .onEnded { value in
                        let horizontalAmount = value.translation.width
                        let verticalAmount = value.translation.height
                        if abs(horizontalAmount) > abs(verticalAmount) {
                            // Swipe detected as horizontal
                            if horizontalAmount > 0 && page > 1 {
                                // Swipe to the right
                                page -= 1
                            } else if horizontalAmount < 0 && page < 4 {
                                // Swipe to the left
                                page += 1
                            }
                        }
                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct ContentView: View {
//
//    var body: some View {
//        TabView {
//            Page1View()
//                .tabItem {
//                    Text("Page 1")
//                }
//            Page2View()
//                .tabItem {
//                    Text("Page 2")
//                }
//            Page3View()
//                .tabItem {
//                    Text("Page 3")
//                }
//            Page4View()
//                .tabItem {
//                    Text("Page 4")
//                }
//        }
//        .animation(.easeInOut(duration: 0.3))
//    }
//}
//
struct Page1View: View {
    var body: some View {
        Text("This is Page 1")
    }
}

struct Page2View: View {
    var body: some View {
        Text("This is Page 2")
    }
}

struct Page3View: View {
    var body: some View {
        Text("This is Page 3")
    }
}

struct Page4View: View {
    var body: some View {
        Text("This is Page 4")
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .environmentObject(DataModel())
//    }
//}
