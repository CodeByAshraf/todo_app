import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class AppBarView extends StatefulWidget {
  const AppBarView({super.key, required this.drawerKey});
  final GlobalKey<SliderDrawerState> drawerKey;
  @override
  State<AppBarView> createState() => _AppBarViewState();
}

class _AppBarViewState extends State<AppBarView>
    with SingleTickerProviderStateMixin {
  late AnimationController animatController;
  bool isDrawer = false;

  @override
  void initState() {
    animatController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    animatController.dispose();
    super.dispose();
  }

  void onDrawer() {
    isDrawer = !isDrawer;
    if (isDrawer) {
      animatController.forward();
      widget.drawerKey.currentState!.openSlider();
    } else {
      animatController.reverse();
      widget.drawerKey.currentState!.closeSlider();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onDrawer,
            icon: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: animatController,
            ),
          ),
          IconButton(onPressed: () {
          }, icon:const Icon(
            CupertinoIcons.trash,
          ))
        ],
      ),
    );
  }
}
