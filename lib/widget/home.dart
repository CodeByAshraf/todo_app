import 'package:flutter/material.dart';
import 'package:todo_app/extensions/space.dart';
import 'package:todo_app/utils/colors.dart';
import 'package:todo_app/utils/strings.dart';
import 'package:todo_app/widget/custome_fab.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var textTheme=Theme.of(context).textTheme;
    return Scaffold(
      floatingActionButton: customeFab(),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                      width: 30,
                      child:  CircularProgressIndicator(
                        value: 1/3,
                        backgroundColor: Colors.grey,
                        valueColor: AlwaysStoppedAnimation(MyColors.primaryColor),
                      ),
                    ),
                    15.w,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(MyString.mainTitle,style: textTheme.displayMedium?.copyWith(
                          fontWeight: FontWeight.bold
                        ),),
                        3.h,
                        Text("1 of 3 task",style: textTheme.titleMedium,),
                      ],
                    ),
                  ],
                ),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
