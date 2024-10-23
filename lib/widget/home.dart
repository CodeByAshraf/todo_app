import 'package:flutter/material.dart';
import 'package:todo_app/extensions/space.dart';
import 'package:todo_app/utils/colors.dart';
import 'package:todo_app/utils/strings.dart';
import 'package:todo_app/widget/custome_fab.dart';
import 'package:todo_app/widget/custome_lottie.dart';
import 'package:todo_app/widget/task_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    final List<int> testValues = [];
    return Scaffold(
      floatingActionButton: customeFab(),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              //!Custome AppBar
              SizedBox(
                width: double.infinity,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(
                        value: 1 / 3,
                        backgroundColor: Colors.grey,
                        valueColor:
                            AlwaysStoppedAnimation(MyColors.primaryColor),
                      ),
                    ),
                    15.w,
                    //!MainTitle
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          MyString.mainTitle,
                          style: textTheme.displayMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        3.h,
                        //!Num Of Tasks
                        Text(
                          "1 of 3 task",
                          style: textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //!Custome Divider
              const Center(
                child: Divider(
                  thickness: 2,
                  indent: 25,
                  endIndent: 25,
                ),
              ),
              20.h,
              //!ListView Of Tasks
              Expanded(
                child: testValues.isNotEmpty
                    ? ListView.builder(
                        itemCount: testValues.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {},
                            //!Dismissible
                            child: Dismissible(
                                onDismissed: (_) {
                                },
                                direction: DismissDirection.horizontal,
                                background: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.delete_outline,
                                      color: Colors.grey,
                                    ),
                                    8.w,
                                    const Text(
                                      MyString.deletedTask,
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                                key: Key(index.toString()),
                                child: taskWidget()),
                          );
                        },
                      )
                      //!lottie.asset
                    : customeLottie(testValues),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
