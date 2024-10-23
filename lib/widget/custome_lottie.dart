
  import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app/utils/strings.dart';

Column customeLottie(List<int>testValues) {
    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeInUp(
                            child: SizedBox(
                              height: 200,
                              width: 200,
                                child: Lottie.asset("assets/lottie/1.json",
                                    animate:
                                        testValues.isNotEmpty ? false : true)),
                          ),
                          FadeInUp(
                            from: 30,
                            child:const Text(MyString.doneAllTask)),
                        ],
                      );
  }