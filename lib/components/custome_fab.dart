  import 'package:flutter/material.dart';
import 'package:todo_app/utils/colors.dart';

GestureDetector customeFab() {
    return GestureDetector(
      onTap: () {
        
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
            child: Icon(Icons.add,color: Colors.white,),
          ),
        ),
      ),
    );
  }