import 'package:flutter/material.dart';
import 'package:instagram/instagram/list.dart';
import 'package:instagram/instagram/profile.dart';
import 'package:instagram/instagram/push.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label:"Home" ),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label:"Search" ),
           BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: Colors.black,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.video_collection_rounded,color: Colors.black,),label:"" ),
             BottomNavigationBarItem(icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                    ),
                  );
              },
              child: Icon(Icons.person_3_sharp,color: Colors.black,)),label: "Profile"),
        ],
        selectedItemColor: Colors.blue,
        ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        
        child: Column(
          children: [
            Row(
              children: [
                Text("Instagram",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 40),),
                Spacer(),
                Icon(Icons.camera_alt_outlined),
                Icon(Icons.notifications),
                Icon(Icons.send),
              ],
            ),
          //  Expanded(
          //    child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: insta.length,
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: ((context, index) {
          //       return Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 50,
          //             child: Column(
          //               children: [
          //                 Container(
          //                   height: 50,
          //                   width: 50,
          //                   color: Colors.blue,
                                    
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     })
          //     ),
          //  ),
           
            Flexible(
              flex: 1,
              child: ListView.builder(
                itemCount: insta.length,
                itemBuilder:(context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                 MaterialPageRoute(
                                  builder:(context) =>  Display(insta: insta[index])));
                                  
                                
                            },
                            child: CircleAvatar(
                              child: Image(image: AssetImage(insta[index]["image"]),fit: BoxFit.contain,),
                            ),
                          ),
                          Text(insta[index]["name"],style: TextStyle(fontWeight: FontWeight.bold),),
                          Spacer(),
                          Icon(Icons.more_vert_outlined)
                        ],
                       ),
                       SizedBox(
                         height: MediaQuery.of(context).size.height*0.007,
                       ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.55,
                          decoration: BoxDecoration(
                            // color: Colors.blueAccent
                          ),
                          child: Image(image: AssetImage(insta[index]["image"]),fit: BoxFit.fill,),
                        ),
                        SizedBox(
                           height: MediaQuery.of(context).size.height*0.007,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.favorite),
                             Icon(Icons.message),
                              Icon(Icons.send),
                               Icon(Icons.facebook),
                               Spacer(),
                                Icon(Icons.archive),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(insta[index]["likes"]),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(child: Text(insta[index]["description"],overflow:TextOverflow.ellipsis ,style: TextStyle(fontWeight: FontWeight.bold,),)),
                          ],
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Comment",
                            suffixIcon: Icon(Icons.send)
                            
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(insta[index]["time"]),
                          ],
                        )
                      ],
                    ),
                  );
                }
                ),
            ),
          ],
        ),
      ),
    );
  }
}