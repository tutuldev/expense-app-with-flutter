import 'package:flutter/material.dart';

class CurrentAcount extends StatelessWidget {
  const CurrentAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 20,left: 12),
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Current Account",
            style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),),
          Text("\$5,432.43",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
