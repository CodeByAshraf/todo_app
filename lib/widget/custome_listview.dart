import 'package:flutter/material.dart';
import 'package:todo_app/extensions/space.dart';
import 'package:todo_app/utils/strings.dart';
import 'package:todo_app/widget/task_widget.dart';

Expanded customeListview() {
    return Expanded(
              child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      
                    },
                    child: Dismissible(
                      onDismissed: (_) {
                        
                      },
                      direction: DismissDirection.horizontal,
                      background:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.delete_outline,color:Colors.grey,),
                          8.w,
                          const Text(MyString.deletedTask,style: TextStyle(
                            color: Colors.grey
                          ),)
                        ],
                      ),
                      key: Key(index.toString()),
                      child: taskWidget()),
                  );
                },
              ),
            );
  }

