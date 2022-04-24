import 'package:flutter/material.dart';
import 'package:money_manager_flutter/screens/category/Screeen_category.dart';
import 'package:money_manager_flutter/screens/home/widgets/bottom_navigation.dart';
import 'package:money_manager_flutter/screens/transaction/Screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({ Key? key }) : super(key: key);

  static ValueNotifier<int>selectedindexnotifier = ValueNotifier(0);

  final _pages= [
     ScreenTransaction(),
     ScreenCategory(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: Text('MONEY MANAGER  '),
      centerTitle: true,
      ),


      bottomNavigationBar: Bottomnavigation(),
      body:SafeArea(
        child: ValueListenableBuilder(valueListenable: selectedindexnotifier,
        builder: (BuildContext context,int updatedIndex , _){
          return _pages[updatedIndex];
        }
        ),
        ),


       floatingActionButton: FloatingActionButton(onPressed: (){
         if(selectedindexnotifier.value==0){
           print('Add transaction');
         }else{
           print('Add category');
         }
       },
       child: Icon(Icons.add),
       )
    );


  }
}