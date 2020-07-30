import 'package:flutter/material.dart';
import 'fading_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Nunito',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
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
      controller: _pageController,
      children: [
        makingPage(
            page: 1,
            image:
                "https://i-cdn.phonearena.com/images/articles/313312-xgallery/18-by-9-smartphone-wallpapers-13.jpg"),
        makingPage(
            page: 2,
            image:
                "https://i.pinimg.com/originals/01/36/d2/0136d2ce14736ced3768f3d4765fc5b7.png"),
        makingPage(
            page: 3,
            image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT15l-rltAdew7yLiyZUpTeOvjp10xnNuybKQ&usqp=CAU"),
        makingPage(
            page: 4,
            image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-ZtD3imsI4W1mur0xS-TBdKi0-1vBSr9qJQ&usqp=CAU")
      ],
    ));
  }

  Widget makingPage({int page, image}) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                FadeingAnimation(
                    2,
                    Text(
                      page.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
                FadeingAnimation(
                  1.5,
                  Padding(
                    padding: EdgeInsets.only(right: 15, top: 30),
                    child: Text(
                      "/" + totalPage.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeingAnimation(
                    1,
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      child: Text(
                        "Yosemite National Park",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            height: 1.2),
                      ),
                    ),
                  ),
                  FadeingAnimation(
                    1.5,
                    Padding(
                      padding: EdgeInsets.all(10),
                      // Row for making the stars
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 16,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 16,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 16,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 16,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Icon(
                                Icons.star,
                                color: Colors.white.withOpacity(0.3),
                                size: 16,
                              ),
                            ),
                          ),
                          SizedBox(width: 14),
                          Text(
                            "4.0",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          SizedBox(width: 2),
                          Text(
                            "(200)",
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FadeingAnimation(
                    2,
                    Padding(
                      padding: EdgeInsets.only(right: 35, left: 12),
                      child: Text(
                        "Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            height: 1.9,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  FadeingAnimation(
                    2.5,
                    Padding(
                      padding: EdgeInsets.only(left: 12, top: 15, bottom: 30),
                      child: Text(
                        "READ MORE",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white.withOpacity(.7),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
