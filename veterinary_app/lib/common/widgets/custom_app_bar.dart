import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/student.dart';
import '../../user_features/home/home_page.dart';


class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final Color color;
  const CustomAppBar(
      {super.key,
      this.preferredSize = const Size.fromHeight(60.0),
      required this.title,
      required this.color});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
 
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<StudentProvider>(context, listen: false).student;
    return AppBar(
      leading: Builder(
          builder: (context) => GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset("assets/Menu icon.png"))),
      iconTheme: const IconThemeData(color: Colors.blue),
      backgroundColor: widget.color,
      elevation: 0,
      title: GestureDetector(
        onTap: () {
          
          Navigator.pushNamedAndRemoveUntil(
              context, HomePage.routeName, (route) => false);
        },
        child: Text(
          widget.title,
          style: const TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.w700),
        ),
      ),
      actions: [
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Center(
                  child: PopupMenuButton<String>(
                      position: PopupMenuPosition.under,
                      elevation: 2,
                      onSelected: (String selectedOption) {
                        print("selected Option: ${selectedOption}");
                      },
                      itemBuilder: (BuildContext context) {
                        List<String> menuOptions = getMenuOptions();
                        List<PopupMenuEntry<String>> menuItem = [];
                        for (int i = 0; i < menuOptions.length; i++) {
                          menuItem
                              .add(PopupMenuItem(child: Text(menuOptions[i])));
                          if (i < menuOptions.length - 1) {
                            menuItem.add(const PopupMenuDivider());
                          }
                        }
                        return menuItem;
                      },
                      child: Image.asset(
                        "assets/bell.jpeg",
                        width: 30,
                        height: 30,
                      )),
                )),
            const Text(
              "Updates",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w200),
            )
          ],
        ),
        const SizedBox(
          width: 5,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Image.asset("assets/Group 22.png", width: 27, height: 28),
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              user.id,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }

  List<String> getMenuOptions() {
    List<String> menuItem = [
      "First Information to be displayed",
      "Second information to be displayed"
    ];
    return menuItem;
  }
}
