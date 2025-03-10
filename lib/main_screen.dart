import 'package:expense_app/screens/analytics_screen.dart';
import 'package:expense_app/screens/help_screen.dart';
import 'package:expense_app/screens/history_screen.dart';
import 'package:expense_app/screens/my_home_screen.dart';
import 'package:expense_app/screens/payment_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

int _currentIndex =0;
List<Widget>screens = const  [
  MyHomeScreen(),
  PaymentScreen(),
  HistoryScreen(),
  AnalyticsScreen(),
  HelpScreen(),
];

void changeIndex (int index){
  setState(() {
    _currentIndex= index;
  });
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.green,
          unselectedLabelStyle: TextStyle(color: Colors.green),
          showUnselectedLabels: true,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.grey.shade100),
          BottomNavigationBarItem(icon: Icon(Icons.payment),label: 'Payments'),
          BottomNavigationBarItem(icon: Icon(Icons.history),label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics),label: 'Analytics'),
          BottomNavigationBarItem(icon: Icon(Icons.help),label: 'Help'),
      ],
      currentIndex: _currentIndex,
        onTap:  changeIndex,
      ),
    );
  }
}
