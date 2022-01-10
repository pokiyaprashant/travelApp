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
        duration: const Duration(milliseconds: 100), curve: Curves.slowMiddle);
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
        price: '\$1500',
        url: [
          'https://media.istockphoto.com/photos/taxis-in-times-square-with-7th-avenue-new-york-city-manhattan-picture-id1277102943?b=1&k=20&m=1277102943&s=170667a&w=0&h=tp_vCWDpgrKsUBtl2ZI-8yy2fMHtoZJPcaZBTcnN9nc=',
          'https://media.istockphoto.com/photos/view-of-madison-street-and-the-financial-district-from-the-manhattan-picture-id1284150106?b=1&k=20&m=1284150106&s=170667a&w=0&h=_qNZSsut1v5kSY_tEbRnm2UUBnCygfXPRkpA0Kcg7ng=',
          'https://images.unsplash.com/photo-1499856871958-5b9627545d1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3eW9yayUyMHRyYXZlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          'https://images.unsplash.com/photo-1514718299651-ad01a63ce471?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG5ld3lvcmslMjB0cmF2ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
          'https://media.istockphoto.com/photos/skyline-of-downtown-new-york-brooklin-bridge-and-manhattan-at-the-picture-id1225580270?b=1&k=20&m=1225580270&s=170667a&w=0&h=rgG_3icBA-kM24hDMFKyHoMr0c8u2alqqVj3pv6q684='
        ]),
    Info(
        name: 'Egypt',
        imageurl:
            'https://images.unsplash.com/photo-1572252009286-268acec5ca0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZWd5cHR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        price: '\$1750',
        url: [
          'https://media.istockphoto.com/photos/woman-standing-on-the-terrace-on-the-background-of-giza-pyramids-picture-id1306141437?b=1&k=20&m=1306141437&s=170667a&w=0&h=ouRPx2WCbAsJr3wrvWsi8ncXGi6Z2v2aAk-NiZtnJ5c=',
          'https://media.istockphoto.com/photos/camel-and-the-pyramids-in-giza-picture-id1139238705?b=1&k=20&m=1139238705&s=170667a&w=0&h=xq2ykORROSwHdQyhtKEtHD6PSO4vTa197NRgOWZl2vk=',
          'https://media.istockphoto.com/photos/the-sphinx-of-giza-next-to-the-pyramids-in-the-desert-egypt-picture-id1146931869?b=1&k=20&m=1146931869&s=170667a&w=0&h=o9euz8XFhTqJhoHnJYjryZVYSs4vBV5tKhgsLCEA-u0=',
          'https://media.istockphoto.com/photos/landscape-with-beach-at-sunrise-in-marsa-alam-picture-id1320901497?b=1&k=20&m=1320901497&s=170667a&w=0&h=QJHPYYjgQ879tZAhq1VcXjjJsjaDctaQ93L2-AW4-XA=',
          'https://images.unsplash.com/photo-1568322445389-f64ac2515020?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZWd5cHQlMjB0cmF2ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'
        ]),
    Info(
        name: 'Australia',
        imageurl:
            'https://images.unsplash.com/photo-1546268060-2592ff93ee24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGF1c3RyYWxpYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        price: '\$2500',
        url: [
          'https://media.istockphoto.com/photos/almost-there-picture-id694370978?b=1&k=20&m=694370978&s=170667a&w=0&h=F-YOcEKac-SyqwnXq0x-ys_a9bLiHwOa077XEWKN9ZM=',
          'https://media.istockphoto.com/photos/driving-offroad-in-western-australia-at-sunset-picture-id1127501364?b=1&k=20&m=1127501364&s=170667a&w=0&h=8Xpj6v69XFTM56JXfXxpD3tkJZtGf4xh1chrINfar9I=',
          'https://images.unsplash.com/photo-1535025183041-0991a977e25b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGF1c3RyYWxpYSUyMHRvdXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
          'https://images.unsplash.com/photo-1576665259179-1a846f2107be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGF1c3RyYWxpYSUyMHRvdXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
          'https://media.istockphoto.com/photos/he-loves-the-great-outdoors-picture-id938524894?b=1&k=20&m=938524894&s=170667a&w=0&h=N6c7gL-FlDVSVbbR062bjXKL1jd2bh7nXHkZQ7g_ZaU='
        ]),
    Info(
        name: 'Roma',
        imageurl:
            'https://media.istockphoto.com/photos/colosseum-in-rome-during-sunrise-picture-id1271579758?b=1&k=20&m=1271579758&s=170667a&w=0&h=oyXB8ehFjbo5-9HDdSjI9hYZktLstV3Ixz4JUUynahU=',
        price: '\$2700',
        url: [
          'https://media.istockphoto.com/photos/couple-contemplating-the-trevi-fountain-in-rome-italy-picture-id1094285970?b=1&k=20&m=1094285970&s=170667a&w=0&h=rnGI9Ct5tbkaglBrKhqowst-lHcJFJKQupG2qaYOc24=',
          'https://media.istockphoto.com/photos/roman-forum-picture-id501396596?b=1&k=20&m=501396596&s=170667a&w=0&h=0H4Nqv54WZhR8X8EwKvBij_EndHNrjZjT2x1eIMKXNk=',
          'https://media.istockphoto.com/photos/woman-walking-in-bologna-picture-id979105142?b=1&k=20&m=979105142&s=170667a&w=0&h=2rAACBHxD9VeI0EJv4o-D8INqRUKzF4j9xfxoBZffr8=',
          'https://media.istockphoto.com/photos/tourist-women-in-rome-by-the-coliseum-picture-id959266144?b=1&k=20&m=959266144&s=170667a&w=0&h=YUulxq57BLELGJoKDAiNfQK0SOk8ApGBxFmnArj8l_g=',
          'https://images.unsplash.com/photo-1593280276854-8559ce0028e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHJvbWElMjB0b3VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
        ]),
    Info(
        name: 'New Zealand',
        imageurl:
            'https://media.istockphoto.com/photos/auckland-new-zealand-panorama-view-beautiful-landcape-of-the-building-picture-id1060826424?b=1&k=20&m=1060826424&s=170667a&w=0&h=cU1kA5md4yljXB6Cf1nhTGAc5g2wSgvu5t3k5v4q-FI=',
        price: '\$2500',
        url: [
          'https://media.istockphoto.com/photos/wellington-cable-car-the-landmark-of-new-zealand-picture-id866887704?b=1&k=20&m=866887704&s=170667a&w=0&h=6dCoUtSOZnhrZMpPhJNnwtFy3k6xniSCd5V95j4FnUs=',
          'https://media.istockphoto.com/photos/autumn-vineyard-in-new-zealand-picture-id1282638662?b=1&k=20&m=1282638662&s=170667a&w=0&h=NL2zYcbpXbXB7o3nIVnl3MNkckaRWirNOGM1keh5mlE=',
          'https://media.istockphoto.com/photos/new-zealand-wellington-city-sunset-twilight-illuminated-night-picture-id1328984135?b=1&k=20&m=1328984135&s=170667a&w=0&h=TzxqLnxNXb5qSMizqag9yqGWC-ysh56E4ck9LXOSdFI=',
          'https://images.unsplash.com/photo-1630406379144-7103e51a7c2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG5ld3plYWxhbmQlMjBiZWFjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          'https://media.istockphoto.com/photos/driftwood-stacking-in-queenstown-picture-id1292807846?b=1&k=20&m=1292807846&s=170667a&w=0&h=cdjjskZGsSGNQhaNdYYFsc8LWL9eqroKiBBVlZhp7xk='
        ]),
    Info(
        name: 'Canada',
        imageurl:
            'https://images.unsplash.com/photo-1587274147808-6a2768cbb915?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhbmFkYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        price: '\$2500',
        url: [
          'https://media.istockphoto.com/photos/snow-biking-couple-picture-id525670203?b=1&k=20&m=525670203&s=170667a&w=0&h=q5Q9p1fQExGeVsC489cqu9WYDnluiL-dSzvspWZqUYs=',
          'https://media.istockphoto.com/photos/canadian-flag-flying-over-old-quebec-city-picture-id1178852373?b=1&k=20&m=1178852373&s=170667a&w=0&h=kCxOQhdYHRdyt_W5AQl3opudpehulJNcEBINwblVP3c=',
          'https://media.istockphoto.com/photos/skyline-of-downtown-edmonton-alberta-canada-at-twilight-picture-id1279220699?b=1&k=20&m=1279220699&s=170667a&w=0&h=9ARNx2BH-clzkU8VSqV5yH9Sr_yTJfs9b9_ZS217SCk=',
          'https://media.istockphoto.com/photos/tranquil-landscape-banff-national-park-alberta-canada-picture-id1279195631?b=1&k=20&m=1279195631&s=170667a&w=0&h=msledCmD4zELxgcHEikhqucZ4XMx90CVf4gyuJNXguw=',
          'https://media.istockphoto.com/photos/mother-and-daughter-enjoying-banff-national-park-in-winter-picture-id481123206?b=1&k=20&m=481123206&s=170667a&w=0&h=z2E0PzomL4aYrLNxQVkf1s-yI1FrH-XFhKZCsqY-REg='
        ]),
    Info(
        name: 'Maldives',
        imageurl:
            'https://images.unsplash.com/photo-1574223706388-0e0f6f0390b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFsZGl2ZXMlMjBiZWFjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        price: '\$2500',
        url: [
          'https://media.istockphoto.com/photos/woman-relaxing-in-luxury-hotel-in-the-maldives-picture-id1298305536?b=1&k=20&m=1298305536&s=170667a&w=0&h=ndxBF_7bESAguY98NjG6s4TtKMBpt1EGLZDqB5uPbU8=',
          'https://media.istockphoto.com/photos/water-villas-in-hotel-resort-maldives-picture-id519691168?b=1&k=20&m=519691168&s=170667a&w=0&h=RN8tgBzTviUFQp_IVd-SX9F38EVBqiXeUV893jEw5Jo=',
          'https://media.istockphoto.com/photos/young-woman-riding-bicycle-on-wooden-pier-in-the-maldives-picture-id1298306226?b=1&k=20&m=1298306226&s=170667a&w=0&h=pMdUiuUrYDwpLBq69acmj8YCLqTLtrcP3QO-kOyth0g=',
          'https://media.istockphoto.com/photos/island-of-maldives-picture-id155139968?b=1&k=20&m=155139968&s=170667a&w=0&h=nxPj8h-ajqqR8wpI_K89s4dloSsfCoVnaUZX2HmoMTg=',
          'https://media.istockphoto.com/photos/floating-breakfast-on-infinity-pool-in-luxury-hotel-picture-id1298863783?b=1&k=20&m=1298863783&s=170667a&w=0&h=iv0LdvIeAHDkX0YBKKRhGLJEEr8b8QC971chr0uNYKI='
        ]),
    Info(
        name: 'South Africa',
        imageurl:
            'https://media.istockphoto.com/photos/clifton-beach-without-people-in-the-late-afternoon-picture-id671323338?b=1&k=20&m=671323338&s=170667a&w=0&h=f-JAoF0Ah-ji55nKQCMfmb88Agp5ztDnJlwW-5gmIfs=',
        price: '\$2500',
        url: [
          'https://media.istockphoto.com/photos/woman-on-african-wildlife-safari-picture-id466220454?b=1&k=20&m=466220454&s=170667a&w=0&h=o1zzNrwGrxrO9fpfJ2qCLp-sqevOPZe823YuYusiuMQ=',
          'https://media.istockphoto.com/photos/rearview-of-hikers-with-backpacks-enjoying-the-sunset-in-the-picture-id1164878594?b=1&k=20&m=1164878594&s=170667a&w=0&h=PjY_72Dd0klkfAbwpr1O5wJpisdQ2RlAHwC65GPqwqc=',
          'https://images.unsplash.com/photo-1547970810-dc1eac37d174?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          'https://images.unsplash.com/photo-1509099836639-18ba1795216d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YWZyaWNhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
          'https://images.unsplash.com/photo-1528277342758-f1d7613953a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
        ]),
    Info(
        name: 'Los Angels',
        imageurl:
            'https://images.unsplash.com/photo-1590499865396-a119960fd16f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGElMjB1c2F8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        price: '\$2500',
        url: [
          'https://media.istockphoto.com/photos/night-los-angeles-ferris-wheel-in-santa-monica-california-usa-picture-id637218060?b=1&k=20&m=637218060&s=170667a&w=0&h=Rxo2e0E7AVT4-Dt2ISoHtc7Rtxy2I_MnLxTWxVHX1R8=',
          'https://images.unsplash.com/photo-1542737579-ba0a385f3b84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bG9zJTIwYW5nZWxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
          'https://images.unsplash.com/photo-1520348054355-6292dcb7ebaa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGxvcyUyMGFuZ2Vsc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          'https://images.unsplash.com/photo-1456299613235-290e454a062a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bG9zJTIwYW5nZWxzJTIwdG91cnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
          'https://images.unsplash.com/photo-1541744520000-9e90e77c0d67?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGxvcyUyMGFuZ2VscyUyMHRvdXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
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
              child: TextFormField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  suffixIcon: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.search,
                      size: 30,
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
            SizedBox(
              height: 15,
            ),
            Container(
              height: 22,
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
              height: 20,
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
                  child: GestureDetector(
                    onTap: () => showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        )),
                        context: context,
                        builder: (context) => bottommodel(
                            data.imageurl, data.name, data.price, data.url)),
                    child: Image(
                      image: NetworkImage("${data.imageurl}"),
                      fit: BoxFit.cover,
                      colorBlendMode: BlendMode.colorBurn,
                    ),
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

  bottommodel(String image, String n, String p, List grl) =>
      DraggableScrollableSheet(
        builder: (_, Controller) => Container(
          // decoration: BoxDecoration(color: Colors.amber),
          child: ListView(
            controller: Controller,
            children: [
              Center(
                child: Text(
                  "$n",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  height: 300,
                  width: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                  )),
              Container(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: grl.length,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image(image: NetworkImage(grl[index]))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'we will go on a slow pace, without stress, we will have fun, with a small group, there will be time to take pictures, it will be a fun experience, this tour is designed for everyone (families and retired people included), they will have the best recommendations to know what do after the tour and where to go to eat.......!',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
          color: Colors.white,
        ),
      );
}

class Screen2 extends StatelessWidget {
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
