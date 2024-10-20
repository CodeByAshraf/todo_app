import 'package:flutter/material.dart';
import 'package:todo_app/utils/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 20,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: MyColors.primaryColor,
          ),
          child: const Center(
            child: Icon(Icons.add,color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
