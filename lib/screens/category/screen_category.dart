import 'package:flutter/material.dart';
import 'package:money_manager_flutter/screens/category/expense_category_list.dart';
import 'package:money_manager_flutter/screens/category/income_category_list.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({super.key});

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}


class _ScreenCategoryState extends State<ScreenCategory> with SingleTickerProviderStateMixin{
  late TabController  _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TabBar(controller: _tabController,
      labelColor: Colors.black,
      tabs: [
       const Tab(text:'INCOME'),
        const Tab(text: 'EXPENSE'),
        ]
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
             children: [
             IncomeCategory(),
             ExpenseCategory(),
             ],),
        )
    ]);
  }
}