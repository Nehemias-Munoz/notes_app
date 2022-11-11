import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: size.width * 0.9,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu_outlined),
              ),
            ),
            Expanded(
              flex: 3,
              child: TextField(
                textAlign: TextAlign.center,
                maxLines: 1,
                decoration: InputDecoration(
                    hintText: "Search from notes", border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}
