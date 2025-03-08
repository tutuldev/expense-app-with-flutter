import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountMannage extends StatelessWidget {
  const AccountMannage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width *.90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        elevation: 6,
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Text("VISA",style: TextStyle(color: Colors.white),),
          ),
          title: Text("Current Account"),
          subtitle: Text("...."),
          trailing: Container(
            height: 25,
            width: 80,
            decoration: BoxDecoration(color: Colors.blue,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:4),
                  child: Text("Mannage",style: TextStyle(color: Colors.white),),
                ),
                Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white,),
              ],
            ),
          )
        ),
      ),
    );
  }
}
