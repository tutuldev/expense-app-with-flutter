
import 'package:flutter/material.dart';

import '../model/transections_model.dart';

class TransactionsList extends StatelessWidget {
   TransactionsList({super.key});

  List<TransectionsModel> transections = [
    TransectionsModel(title: "Spotify Premium", subtitle: "Expense",
        iconData: Icons.cases_sharp, amount: 9.99),
    TransectionsModel(title: "Salary", subtitle: "Income",
        iconData: Icons.money, amount: 5384.99),
    TransectionsModel(title: "Electricicity", subtitle: "Expense",
        iconData: Icons.electric_bolt, amount: 58.99),
  ];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: transections.length,
      itemBuilder: (context,index){
      return ListTile(
        leading: Icon(transections[index].iconData),
        title: Text(transections[index].title !),
        subtitle: Text(transections[index].subtitle !),
        trailing: Text("\$ ${transections[index].amount}"),
      );
    },);
  }
}
