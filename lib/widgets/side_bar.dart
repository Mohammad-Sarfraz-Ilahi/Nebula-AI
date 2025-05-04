import 'package:flutter/material.dart';
import 'package:nebula_ai/theme/colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      color: AppColors.sideNav,
      child: Column(
        children: [
          SizedBox(height: 16),
          Image.asset('assets/images/nebula.png',width: 45,),
          SizedBox(height: 24),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Icon(Icons.search, color: Colors.grey, size: 22)),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Icon(Icons.language, color: Colors.grey, size: 22)),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Icon(Icons.auto_awesome, color: Colors.grey, size: 22)),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Icon(Icons.cloud_outlined, color: Colors.grey, size: 22)),
          Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed=!isCollapsed;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 14),
              child: Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 22)),
          ),
          SizedBox(height: 16,),
        ],
      ),
    );
  }
}
