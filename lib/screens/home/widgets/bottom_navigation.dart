import 'package:flutter/material.dart';
import 'package:money_manager_flutter/screens/home/Screen_home.dart';

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: ScreenHome.selectedindexnotifier, 
    builder: (BuildContext ctx, int updatedIndex, Widget? _){
      return BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
      currentIndex: updatedIndex,
      onTap: (newIndex){
        ScreenHome.selectedindexnotifier.value = newIndex;
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label:'Transcations'
        ),
        BottomNavigationBarItem(icon: Icon(Icons.category),
        label: 'Categories'
        ),
      
         ], 
      );
    },
    
    );
    
  }
}