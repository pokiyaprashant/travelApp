import 'package:carousel_slider/carousel_slider.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/model.dart';

class AfterLoginPage extends StatefulWidget {
  const AfterLoginPage({Key? key}) : super(key: key);

  @override
  _AfterLoginPageState createState() => _AfterLoginPageState();
}

class _AfterLoginPageState extends State<AfterLoginPage> {
  int _pageIndex = 0;
  late PageController _pageController;

  List<Widget> tabPages = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          children: tabPages,
          onPageChanged: onPageChanged,
          controller: _pageController,
        ),
        //BottomnavigationBar
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
            currentIndex: _pageIndex,
            onTap: onTabTapped,
            backgroundColor: Colors.red,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  // icon: Icon(
                  //   Icons.home,
                  //   color: Colors.white,
                  //   size: 20,
                  // ),
                  label: "",
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.navigation,
                    color: Colors.black,
                  ),
                  icon: Icon(
                    Icons.navigation,
                    color: Colors.white,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  label: ""),
            ],
          ),
        ));
  }

  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 100), curve: Curves.easeInOut);
  }
}

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // Set<String> savedWords = Set<String>();
  List<Info> favs = [];
  List<Info> info = [
    Info(
        name: 'NewYork',
        imageurl:
            'https://media.istockphoto.com/photos/new-york-city-nyc-usa-picture-id615398376?b=1&k=20&m=615398376&s=170667a&w=0&h=v59Pfuvn4jTqysv0RYKsYhoUM_ayitgQIsG8cFg3rM8=',
        price: '\$1500'),
    Info(
        name: 'Egypt',
        imageurl:
            'https://images.unsplash.com/photo-1572252009286-268acec5ca0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZWd5cHR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        price: '\$1750'),
    Info(
        name: 'Australia',
        imageurl:
            'https://images.unsplash.com/photo-1546268060-2592ff93ee24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGF1c3RyYWxpYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        price: '\$2500'),
    Info(
        name: 'Roma',
        imageurl:
            'https://media.istockphoto.com/photos/colosseum-in-rome-during-sunrise-picture-id1271579758?b=1&k=20&m=1271579758&s=170667a&w=0&h=oyXB8ehFjbo5-9HDdSjI9hYZktLstV3Ixz4JUUynahU=',
        price: '\$2700'),
    Info(
        name: 'New Zealand',
        imageurl:
            'https://media.istockphoto.com/photos/auckland-new-zealand-panorama-view-beautiful-landcape-of-the-building-picture-id1060826424?b=1&k=20&m=1060826424&s=170667a&w=0&h=cU1kA5md4yljXB6Cf1nhTGAc5g2wSgvu5t3k5v4q-FI=',
        price: '\$2500'),
    Info(
        name: 'Canada',
        imageurl:
            'https://images.unsplash.com/photo-1587274147808-6a2768cbb915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhbmFkYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        price: '\$2500'),
    Info(
        name: 'Maldives',
        imageurl:
            'https://images.unsplash.com/photo-1574223706388-0e0f6f0390b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFsZGl2ZXMlMjBiZWFjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        price: '\$2500'),
    Info(
        name: 'South Africa',
        imageurl:
            'https://media.istockphoto.com/photos/clifton-beach-without-people-in-the-late-afternoon-picture-id671323338?b=1&k=20&m=671323338&s=170667a&w=0&h=f-JAoF0Ah-ji55nKQCMfmb88Agp5ztDnJlwW-5gmIfs=',
        price: '\$2500'),
    Info(
        name: 'Los Angels',
        imageurl:
            'https://images.unsplash.com/photo-1590499865396-a119960fd16f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGElMjB1c2F8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        price: '\$2500'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Flex(direction: Axis.vertical, children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                child: Center(
                  child: Text(
                    "AIRFLY",
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.search,
                          size: 35,
                          color: Colors.red,
                        ),
                      ),
                      hintText: 'Search Your Holiday',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Most Popular Place",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: info.length,
                  itemBuilder: (context, index) => buildCard(info[index]),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your Favorite Places",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: favs.length,
                  itemBuilder: (context, index) => buildCard(favs[index]),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget buildCard(Info data) => Container(
        margin: EdgeInsets.only(left: 7, right: 7),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        // height: 100,
        // width: 150,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                        colors: [Colors.black, Colors.black12],
                        begin: Alignment.bottomCenter,
                        end: Alignment.center)
                    .createShader(bounds),
                blendMode: BlendMode.darken,
                child: Container(
                  height: 160,
                  width: 160,
                  child: Image(
                    image: NetworkImage("${data.imageurl}"),
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 13,
              bottom: 29,
              child: Text(
                '${data.name}',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 8,
              bottom: 18,
              child: Text(
                'Prices Starting ${data.price}',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 19,
              right: 12,
              child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.5),
                  radius: 16,
                  child: GestureDetector(
                      onTap: () {
                        print("object");
                        setState(() {
                          if (favs.contains(data)) {
                            favs.remove(data);
                          } else {
                            favs.add(data);
                          }
                        });
                      },
                      child: Icon(favs.contains(data)
                          ? Icons.favorite
                          : Icons.favorite_outline))),
            )
          ],
        ),
      );
}

class Screen2 extends StatefulWidget {
  final Info? task;
  const Screen2({Key? key, this.task}) : super(key: key);
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Center(child: Text("Screen 3")),
    );
  }
}
