import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 160,
      width: 350,
      margin: EdgeInsets.only(left: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text("1234 1234 1223 1224",
              style: TextStyle(fontSize: 22,color: Colors.white),),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Nirob Hasan",
                  style: TextStyle(fontSize: 16,color: Colors.white),),
                Text("VISA",style: TextStyle(fontSize: 20,color: Colors.white),)
              ],
            ),
          ),
          const SizedBox(height: 22),
        ],
      ),
    );
  }
}
