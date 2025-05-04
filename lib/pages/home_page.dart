import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nebula_ai/services/chat_web_service.dart';
import 'package:nebula_ai/theme/colors.dart';
import 'package:nebula_ai/widgets/search_section.dart';
import 'package:nebula_ai/widgets/side_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        kIsWeb ? SideBar() : SizedBox(),
        Expanded(
          child: Padding(
            padding: !kIsWeb ? const EdgeInsets.all(8.0) : EdgeInsets.zero,
            child: Column(
              children: [
                Expanded(
                  child: SearchSection(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "All rights reserved © Nebula AI",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.footerGrey,
                          ),
                        ),
                      ), 
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
