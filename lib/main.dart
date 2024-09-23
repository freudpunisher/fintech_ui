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
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 80, 98),
      body: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "welcom back!",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Mugisha Freud ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Expanded(
                  child: Stack(children: [
                Container(
                  margin: const EdgeInsets.only(top: 167),
                  color: Colors.white,
                  child: const Column(children: [
                    SizedBox(
                      height: 110,
                    ),
                    ActionsButtons(),
                    SizedBox(
                      height: 30,
                    ),
                    TransationList()
                  ]),
                ),
                const Positioned(
                  top: 20,
                  left: 25,
                  right: 25,
                  child: CreditCard(),
                )
              ]))
            ],
          )),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Column(
                  children: [
                    Icon(Icons.home),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )),
            IconButton(
                onPressed: () {},
                icon: const Column(
                  children: [
                    Icon(Icons.credit_card),
                    Text(
                      "My card",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 16, 88, 98),
              child: const Icon(Icons.qr_code_scanner, color: Colors.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Column(
                  children: [
                    Icon(Icons.bar_chart),
                    Text(
                      "Activity",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )),
            IconButton(
                onPressed: () {},
                icon: const Column(
                  children: [
                    Icon(Icons.person),
                    Text(
                      "Profil",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
