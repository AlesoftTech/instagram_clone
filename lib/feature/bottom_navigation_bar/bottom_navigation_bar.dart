import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intragram_clone_by_alejo/feature/home/views/home_page_view.dart';

class NavigationBar extends StatefulWidget {
  int indexTap;
  NavigationBar(this.indexTap);
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override

  final List<Widget> widgetsChildren = [
    const HomePageView(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.pink,
    )
  ];

  void onTapTapped(int index){
    setState(() {
      widget.indexTap = index;
    });
  }

  void indexLess(){
    setState(() {
      widget.indexTap--;
    });
  }
  Widget build(BuildContext context) {

    double iconsize = 23;

    return Scaffold(
      body: widgetsChildren[widget.indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.black,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: widget.indexTap,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FontAwesomeIcons.house,
                size: iconsize,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: iconsize,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FontAwesomeIcons.camera,
                size: iconsize,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FontAwesomeIcons.bagShopping,
                size: iconsize,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Container(
                height: iconsize + 5,
                width: iconsize + 5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
