import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ZoomDrawer(
      menuScreen: DrawerScreen(
        setIndex: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      mainScreen: currentScreen(),
      borderRadius: 10,
      showShadow: false,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade400,
          blurRadius: 30,
          spreadRadius: 2,
        ),
      ],
      angle: 0,
      slideWidth: 210,
      menuScreenWidth: MediaQuery.of(context).size.width,
      menuBackgroundColor: Colors.white,
    ));
  }

  Widget currentScreen() {
    switch (currentIndex) {
      case 0:
        return HomeScreen(
          title: "Home",
        );
      case 1:
        return HomeScreen(
          title: "Inbox",
        );
      case 2:
        return HomeScreen(
          title: "Sent",
        );
      case 3:
        return HomeScreen(
          title: "Favorite",
        );
      case 4:
        return HomeScreen(
          title: "Archive",
        );
      case 5:
        return HomeScreen(
          title: "Spam",
        );
      default:
        return HomeScreen();
    }
  }
}

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({Key? key, this.title = "Home"}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        leading: DrawerWidget(),
      ),
    );
  }
}

class DrawerScreen extends StatefulWidget {
  final ValueSetter setIndex;
  const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 60, left: 20, bottom: 12),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(),
                ),
              ),
              Text("Krittawat Boonchaiwattana")
            ],
          ),
        ),
        drawerList(Icons.home, "Home", 0),
        drawerList(Icons.mail, "Inbox", 1),
        drawerList(Icons.send, "Sent", 2),
        drawerList(Icons.favorite, "Favorite", 3),
        drawerList(Icons.archive, "Archive", 4),
        drawerList(Icons.block, "Spam", 5),
      ],
    );
  }

  Widget drawerList(IconData icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        widget.setIndex(index);
      },
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 20, bottom: 12),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              text,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
      icon: Icon(Icons.menu),
    );
  }
}




  //  ZoomDrawer(
  //     controller: ZoomDrawerController,
  //     menuScreen: MenuScreen(),
  //     mainScreen: MainScreen(),
  //     borderRadius: 24.0,
  //     showShadow: false,
  //     angle: 0.0,
  //     drawerShadowsBackgroundColor: Colors.grey[300],
  //     slideWidth: MediaQuery.of(context).size.width * 0.65,
  //   )