import 'package:flutter/material.dart';
import 'package:todo_app/functions/custome_navigate.dart';
import 'package:todo_app/routes/routes_string.dart';
import 'package:todo_app/utils/colors.dart';

class CustomeFab extends StatelessWidget {
  const CustomeFab({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customeNavigate(context, AppRoutesString.taskDetails);
      },
      child: Material(
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
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
