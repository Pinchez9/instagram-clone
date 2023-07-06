import 'package:flutter/material.dart';
import 'package:instagram/instagram/list.dart';
class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: insta.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:insta.length
                  ),
                 itemBuilder: ((context, index) {
                   return CircleAvatar(
                    backgroundColor: Colors.black,
                   );
                 })
                 ),
            ),
          ],
        ),
      ),
    );
  }
}