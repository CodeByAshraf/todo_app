import 'package:flutter/material.dart';
import 'package:todo_app/utils/colors.dart';

AnimatedContainer taskWidget() {
  return AnimatedContainer(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    duration: const Duration(milliseconds: 600),
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black.withOpacity(.1),
                            offset: const Offset(0, 4),
                          )
                        ]),
                    child: ListTile(
                      leading: GestureDetector(
                        onTap: () {},
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 600),
                          decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: .8),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      //!Task Title
                      title: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Done",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                            Align(alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Text(
                                    "Date",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Subdate",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w600,
                                    ),
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