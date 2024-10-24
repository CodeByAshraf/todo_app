import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/extensions/space.dart';
import 'package:todo_app/utils/colors.dart';

class CustomeSlider extends StatelessWidget {
  CustomeSlider({super.key});
  final List<IconData> icons = [
    CupertinoIcons.home,
    CupertinoIcons.person_fill,
    CupertinoIcons.settings,
    CupertinoIcons.info_circle_fill,
  ];

  final List<String> titleIndex = [
    "Home",
    "Profile",
    "Setting",
    "Details",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 90),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: MyColors.primaryGradientColor,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(
                "https://th.bing.com/th/id/R.b7ed173fdde9b07d7d78c0059f3ebe54?rik=BkE1nBxvyzccPw&pid=ImgRaw&r=0"),
          ),
          10.h,
          Text(
            'Ashraf Magdy',
            style: GoogleFonts.cairo(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 228, 228, 228)),
          ),
          5.h,
          Text(
            'Flutter Dev',
            style: GoogleFonts.cairo(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 228, 228, 228)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: icons.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    //Navigate
                  },
                  child: Container(
                    margin:const EdgeInsets.only(
                      left: 7
                    ),
                    child: ListTile(
                      leading: Icon(
                        icons[index],
                        color:Colors.white,
                      ),
                      title: Text(
                        titleIndex[index],
                        style: const TextStyle(
                          color: Color.fromARGB(255, 228, 228, 228),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
