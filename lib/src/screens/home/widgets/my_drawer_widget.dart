import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> drawerOptions = [
      {"title": "All Notes", "iconData": Icons.list_alt},
      {"title": "My Notes", "iconData": Icons.list_outlined},
      {"title": "Reminders", "iconData": Icons.alarm_outlined},
      {"title": "Trash", "iconData": Icons.delete_outline},
      {"title": "Settings", "iconData": Icons.settings_outlined},
    ];
    return Drawer(
      child: Expanded(
        child: Column(
          children: [
            Expanded(
              child: DrawerHeader(
                padding: const EdgeInsets.all(3.0),
                child: Center(
                  child: Card(
                    child: ListTile(
                      trailing: Icon(Icons.supervised_user_circle_sharp),
                      title: Text("User Name"),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView.separated(
                separatorBuilder: (_, int index) => Divider(),
                itemCount: drawerOptions.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(drawerOptions[index]["title"]),
                    leading: Icon(
                      drawerOptions[index]["iconData"],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
