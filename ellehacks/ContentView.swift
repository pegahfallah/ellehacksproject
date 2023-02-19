
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
                }
            }
        }
      }

struct Page1View: View {
    @State private var cloudOffset: CGFloat = UIScreen.main.bounds.height

    var body: some View {
        
        VStack {
            Image("RAINCLOUD")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)             .offset(y: cloudOffset).animation(Animation.linear(duration: 5.0))
                .onAppear {
                    cloudOffset = 0
                }

            Spacer().frame(minHeight: 200, maxHeight: 200)
            Text("ScreenSaver").font(.largeTitle).bold().foregroundColor(.white).shadow(color: Color.blue.opacity(0.8), radius: 20, x: 0, y: 0)
            Spacer().frame(minHeight: 100, maxHeight: 400)


        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(#colorLiteral(red: 0.6901960784, green: 0.9098039216, blue: 0.9725490196, alpha: 1)))
    }
}

struct Page2View: View {
    @State private var name: String = ""
    @State private var numPhotos: String = ""
    @State private var scrollAvg: String = ""
    @State private var screenTimeGoal: String = ""

    @State private var selection = 0

    var body: some View {
        VStack{
            Text("Tell Us About Your Habits")
            Form {
                Section(header: Text("User Info")) {
                    TextField("Name", text: $name)
                }

                Section(header: Text("Usage Stats")) {
                    TextField("Average scrolling", text: $scrollAvg);
                    TextField("Screen time goal", text: $screenTimeGoal)
                }

            }.padding(.vertical, 20)

            Button("Next", action: {
                selection += 1
            }).padding(.top, 20)
        }
        .onChange(of: selection) { newValue in
            print("Selected tab: \(newValue)")
        }
        .tabItem {
            Text("Page 2")
        }
        .tag(1)
    }
}

struct Page3View: View {
    var body: some View {
        NavigationView {
            VStack {
                    
                Button("Get Started") {
                    
                    let tabView = TabView {

                        Page4View()
                            .tabItem {
                                Image(systemName: "circle")
                            }
                        Page5View()
                            .tabItem {
                                Image(systemName: "circle")
                            }
                        Page6View()
                            .tabItem {
                                Image(systemName: "circle")
                            }
                        Page7View()
                            .tabItem {
                                Image(systemName: "circle")
                            }
                        
//                        Text("ScreenSaver")
//                            .tabItem {
//                                Image(systemName: "circle")
//                                
//                            }
                    }.background(Color(#colorLiteral(red: 0.6901960784, green: 0.9098039216, blue: 0.9725490196, alpha: 1))).frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).accentColor(.blue)
                    
                    UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: tabView)
                    UIApplication.shared.windows.first?.makeKeyAndVisible()
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Page4View: View {
    
    var body: some View {


        VStack{
            Text("Daily Summary ").font(.title).padding() // Header at the top
            
            Spacer().frame(minHeight: 100, maxHeight: 100) // Push VStack content to the bottom
            Text("1276g produced").font(.headline).padding() // Header at the top

            // Circle with text in the center
            ZStack {
                Circle().foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                Text("8  hours 32 mins").foregroundColor(.black)
               
            }.frame(width: 200, height: 200)
            var angry = "\u{1F62D}"
            Text(angry).font(.system(size: 80))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color(#colorLiteral(red: 0.6901960784, green: 0.9098039216, blue: 0.9725490196, alpha: 1)))
    }
        
}


struct Page5View: View {
    var body: some View {


        VStack{
            Text("Daily Summary ").font(.title).padding() // Header at the top
            
            Spacer().frame(minHeight: 100, maxHeight: 100) // Push VStack content to the bottom
            Text("1276g produced").font(.headline).padding() // Header at the top

            // Circle with text in the center
            ZStack {
                Circle().foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                Text("8  hours 32 mins").foregroundColor(.black)
               
            }.frame(width: 200, height: 200)
            var angry = "\u{1F62D}"
            Text(angry).font(.system(size: 80))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color(#colorLiteral(red: 0.6901960784, green: 0.9098039216, blue: 0.9725490196, alpha: 1)))
    }
}

    struct Page6View: View {
        @State private var cloudOffset: CGFloat = UIScreen.main.bounds.height

        var body: some View {
            
            VStack {
                Image("RAINCLOUD")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)             .offset(y: cloudOffset).animation(Animation.linear(duration: 5.0))
                    .onAppear {
                        cloudOffset = 0
                    }

                Spacer().frame(minHeight: 200, maxHeight: 200)
                Text("ScreenSaver").font(.largeTitle).bold().foregroundColor(.white).shadow(color: Color.blue.opacity(0.8), radius: 20, x: 0, y: 0)
                Spacer().frame(minHeight: 100, maxHeight: 400)


            }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(#colorLiteral(red: 0.6901960784, green: 0.9098039216, blue: 0.9725490196, alpha: 1)))
        }
    }

    
struct Page7View: View {
    @State private var cloudOffset: CGFloat = UIScreen.main.bounds.height

    var body: some View {
        
        VStack {
            Image("RAINCLOUD")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)             .offset(y: cloudOffset).animation(Animation.linear(duration: 5.0))
                .onAppear {
                    cloudOffset = 0
                }

            Spacer().frame(minHeight: 200, maxHeight: 200)
            Text("ScreenSaver").font(.largeTitle).bold().foregroundColor(.white).shadow(color: Color.blue.opacity(0.8), radius: 20, x: 0, y: 0)
            Spacer().frame(minHeight: 100, maxHeight: 400)


        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(#colorLiteral(red: 0.6901960784, green: 0.9098039216, blue: 0.9725490196, alpha: 1)))
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

