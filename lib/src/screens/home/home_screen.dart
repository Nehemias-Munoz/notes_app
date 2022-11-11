import 'package:flutter/material.dart';
import 'package:notes_app/src/screens/home/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MyDrawerWidget(),
      body: SafeArea(
        child: SizedBox(
          width: size.width * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SearchBarWidget(size: size),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
