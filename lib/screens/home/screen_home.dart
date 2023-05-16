import 'package:flutter/material.dart';
import 'package:money_manager_flutter/screens/category/screen_category.dart';
import 'package:money_manager_flutter/screens/home/widgets/bottom_navigation.dart';
import 'package:money_manager_flutter/screens/transactions/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
final _pages = const[
  ScreenTransaction(),
  ScreenCategory(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title:const Text('AYISHA'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(selectedIndexNotifier.value == 0){
          print('add transaction');
        }else{print('add category');
        }
      
      },
      child:const Icon(Icons.money),
      ),


      bottomNavigationBar:const MoneyManagerBottomNavigation(),
      body: SafeArea(child: ValueListenableBuilder(valueListenable: selectedIndexNotifier, builder: (BuildContext context, int updatedIndex, _) {
        return _pages[updatedIndex];
      },)
      ),

      );
  
  }
}