import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int cIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ''
           ),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph),
              label: ''
           ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: ''
           ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ''
          ),
        ],
        type: BottomNavigationBarType.fixed,

        currentIndex: cIndex,
        elevation: 0,
        selectedItemColor: Color(0xFF558683),
        unselectedItemColor: Color(0xFF9c9c9c),
        iconSize: 30,
        onTap: (index){
        setState(() {
          cIndex=index;
        });
        },
    );
  }
}
