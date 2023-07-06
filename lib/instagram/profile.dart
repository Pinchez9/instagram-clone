import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text("its_pinchez01"),
                Icon(Icons.keyboard_arrow_down_rounded),
                Spacer(),
                Icon(Icons.camera_alt_outlined),
                 Icon(Icons.send),
                  Icon(Icons.menu),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.007,
            ),
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 40,
                  child: Image(image: AssetImage("assets/pep.webp"),fit: BoxFit.fitHeight,),
                ),
                Expanded(
                  child: ListTile(
                    title: Text("0"),
                    subtitle: Text("Posts"),
                  ),
                ),
                  Expanded(
                  child: ListTile(
                    title: Text("525K"),
                    subtitle: Text("Followers"),
                  ),
                ),
                  Expanded(
                  child: ListTile(
                    title: Text("58"),
                    subtitle: Text("Following"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text("Petr Pinchez"),
                     Text("I like it"),
                      Text("Legend"),
                       Text("www.petrcomputers.tech.blog"),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed:(){

                  },
                   child:Container(
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width*0.8,
                     height: MediaQuery.of(context).size.height*0.03,

                    child: Center(child: Text("Edit Profite")))
                   ),
                    TextButton(
                  onPressed:(){

                  },
                   child:Container(
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width*0.09,
                     height: MediaQuery.of(context).size.height*0.03,

                    child: Center(child: Icon(Icons.keyboard_arrow_up_outlined)))
                   ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}