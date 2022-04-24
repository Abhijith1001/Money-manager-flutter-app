import 'package:flutter/material.dart';
import 'package:money_manager_flutter/screens/category/expense_categorylist.dart';
import 'package:money_manager_flutter/screens/category/income_categorylist.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({ Key? key }) : super(key: key);

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory>
with SingleTickerProviderStateMixin {
  late TabController _tabController;

@override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
           tabs: [
          Tab(text: 'Income'),
          Tab(text: 'Expense'),
        ]
        ),


       Expanded( child: TabBarView(
           controller: _tabController,
          children: [
           
            Incomecategorylist(),
            Expensecategorylist(),
          ]
          )
          )
      ],
    );
}
}
