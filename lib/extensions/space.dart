import 'package:flutter/material.dart';

extension IntExtension on int {
  Widget get h => SizedBox(
        height: toDouble(),
      );

  Widget get w => SizedBox(
        width: toDouble(),
      );
}
