import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  Map insta;
  Display({super.key, required this.insta});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(widget.insta["name"]),
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
                  child: Image(image: AssetImage(widget.insta["image"]),fit: BoxFit.fitHeight,),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(widget.insta["posts"]),
                    subtitle: Text("Posts"),
                  ),
                ),
                  Expanded(
                  child: ListTile(
                    title: Text(widget.insta["followers"]),
                    subtitle: Text("Followers"),
                  ),
                ),
                  Expanded(
                  child: ListTile(
                    title: Text(widget.insta["following"]),
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
                    Text(widget.insta["name"]),
                     Text(widget.insta["description1"]),
                      Text(widget.insta["description2"]),
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
                    color: Colors.blue,
                    width: MediaQuery.of(context).size.width*0.4,
                     height: MediaQuery.of(context).size.height*0.05,

                    child: Center(child: Text("Follow")))
                   ),
                     TextButton(
                  onPressed:(){

                  },
                   child:Container(
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width*0.4,
                     height: MediaQuery.of(context).size.height*0.05,

                    child: Center(child: Text("Message")))
                   ),
                    TextButton(
                  onPressed:(){

                  },
                   child:Container(
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width*0.09,
                     height: MediaQuery.of(context).size.height*0.05,

                    child: Center(child: Icon(Icons.people)))
                   ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}