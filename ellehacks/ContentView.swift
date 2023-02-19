
import SwiftUI

struct ContentView: View {

    var body: some View {
            VStack {
                TabView {
                    Page1View()
                        .tabItem {
                            Text("Page 1")
                        }
                    Page2View()
                        .tabItem {
                            Text("Page 2")
                        }
                    Page3View()
                        .tabItem {
                            Text("Page 3")
                        }
                    Page4View()
                        .tabItem {
                            Text("Page 4")
                        }
                }
            }
        }
      }

struct Page1View: View {
    var body: some View {
        ZStack {
            Image("RAINCLOUD")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
            Text("ScreenSaver").font(.largeTitle).bold()
        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(#colorLiteral(red: 0.6901960784, green: 0.9098039216, blue: 0.9725490196, alpha: 1)))
    }
}

struct Page2View: View {
            @State private var name: String = ""
            @State private var numPhotos: String = ""
            @State private var scrollAvg: String = ""
            @State private var screenTimeGoal: String = ""
            
            var body: some View {
                
                Form {
                    Section(header: Text("User Info")) {
                        TextField("Name", text: $name)
                    }
                    
                    Section(header: Text("Usage Stats")) {
                        TextField("Average scrolling", text: $scrollAvg);
                        TextField("Screen time goal", text: $screenTimeGoal)
                    }
                    
                    
                }
                .padding(.vertical, 20)
            }
        }

struct Page3View: View {
    var body: some View {
        Text("This is Page 3").frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(#colorLiteral(red: 0.6901960784, green: 0.9098039216, blue: 0.9725490196, alpha: 1)))
    }
}

struct Page4View: View {
    var body: some View {
        Text("This is Page 4").frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(#colorLiteral(red: 0.6901960784, green: 0.9098039216, blue: 0.9725490196, alpha: 1)))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        self.init(red: Double((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: Double((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: Double(rgbValue & 0x0000FF) / 255.0)
    }
}

