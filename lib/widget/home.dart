import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:todo_app/components/appbarview.dart';
import 'package:todo_app/components/custome_fab.dart';
import 'package:todo_app/widget/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<SliderDrawerState> drawer = GlobalKey<SliderDrawerState>();
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    final List<int> testValues = [];
    return Scaffold(
      floatingActionButton: customeFab(),
      body: SliderDrawer(
        key: drawer,
        isDraggable: false,
        animationDuration: 1000,
        slider: Container(
          color: Colors.red,
        ),
        appBar: AppBarView(drawerKey: drawer,),
        child: homeBody(textTheme, testValues),
      ),
    );
  }
}
