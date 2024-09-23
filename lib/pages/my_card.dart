import 'package:fintech_ui/widgets/credit_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCardPage extends StatelessWidget {
  const MyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
        ),
        title: Text(
          "My Card",
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              BackCard(),
              SizedBox(
                height: 20,
              ),
              CreditCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class BackCard extends StatelessWidget {
  const BackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: const Color.fromARGB(255, 14, 19, 29)));
  }
}
