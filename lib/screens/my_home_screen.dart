import 'package:expense_app/screens/widgets/credit_card.dart';
import 'package:expense_app/screens/widgets/current_account.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF), //eta defaul
        elevation: 0, //show 0 etaw default
         leading: Container(
           height: 90,
           margin: const EdgeInsets.all(8),
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: NetworkImage("https://picsum.photos/200"))
          ),
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.blue,)),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //current account blance section
          CurrentAcount(),

          // cards
          CreditCard(),

          // transections

        ],
      ),
    );
  }
}
