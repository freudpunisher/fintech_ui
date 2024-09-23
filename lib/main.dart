import 'package:fintech_ui/pages/activity.dart';
import 'package:fintech_ui/pages/home.dart';
import 'package:fintech_ui/pages/my_card.dart';
import 'package:fintech_ui/pages/profile.dart';
import 'package:fintech_ui/pages/scan.dart';
import 'package:fintech_ui/widgets/action_button.dart';
import 'package:fintech_ui/widgets/credit_card.dart';
import 'package:fintech_ui/widgets/transation_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 16, 88, 98)),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int currentIndex = 0;

  final List<Widget> pages = [
    const Home(),
    const MyCardPage(),
    const ScanPage(),
    const ActivityPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              tabItem(Icons.home, "Home", 0),
              tabItem(Icons.credit_card, "My card", 1),
              FloatingActionButton(
                onPressed: () => onTabTapped(2),
                backgroundColor: Color.fromARGB(255, 16, 80, 98),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                ),
              ),
              tabItem(Icons.bar_chart, "Activity", 3),
              tabItem(Icons.credit_card, "Profil", 4),
            ],
          )),
    );
  }

  Widget tabItem(IconData icon, String label, int index) {
    return IconButton(
        onPressed: () => onTabTapped(index),
        icon: Column(
          children: [
            Icon(
              icon,
              color: currentIndex == index ? Colors.black : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                  fontSize: 10,
                  color: currentIndex == index
                      ? Theme.of(context).primaryColor
                      : Colors.grey),
            )
          ],
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
