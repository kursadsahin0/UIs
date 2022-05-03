// ignore_for_file: prefer_const_constructors
// @dart=2.9
import 'package:flutter/material.dart';
import 'color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 35,
              ),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RoutePink()),
                  );
                },
                icon: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.black,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "reel",
              icon: Icon(
                Icons.video_call,
                color: Colors.black,
                size: 35,
              ),
            ),
            BottomNavigationBarItem(
              label: "shop",
              icon: Icon(
                Icons.shopping_basket_outlined,
                color: Colors.black,
                size: 35,
              ),
            ),
            BottomNavigationBarItem(
              label: "profile",
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
                size: 35,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Image.network(
                        'https://raw.githubusercontent.com/dancamdev/UIs/master/Instagram%20UI/assets/instagram.png',
                        width: 130,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            size: 30,
                          ),
                          const SizedBox(width: 8.0),
                          Icon(
                            Icons.favorite_border,
                            size: 30.0,
                          ),
                          const SizedBox(width: 8.0),
                          Icon(
                            Icons.send,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://instagram.fada1-14.fna.fbcdn.net/v/t51.2885-19/120890281_1112330992515340_8601083237573261103_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fada1-14.fna.fbcdn.net&_nc_cat=104&_nc_ohc=E9oeHwTJksQAX_OAf-w&tn=JGJdNZQr657M0thX&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT95EN0BFYOYSe-P8ThoD5p6KMZ0HaX58_BAu2w8F8IVmg&oe=6263549B&_nc_sid=7bff83'),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1505888927680536576/xTfPC7H9_400x400.jpg'),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1499325831268777985/mA2dQb-o_400x400.jpg'),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1512811336291520512/LX0uyPpN_400x400.jpg'),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1259532951894794245/y4A9Gbf0_400x400.jpg'),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/profile_images/1458468040077680646/7PIthswU_400x400.jpg'),
                          radius: 35,
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Post(
                      image:
                          'https://instagram.fada1-14.fna.fbcdn.net/v/t51.2885-19/120890281_1112330992515340_8601083237573261103_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fada1-14.fna.fbcdn.net&_nc_cat=104&_nc_ohc=E9oeHwTJksQAX_OAf-w&tn=JGJdNZQr657M0thX&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT95EN0BFYOYSe-P8ThoD5p6KMZ0HaX58_BAu2w8F8IVmg&oe=6263549B&_nc_sid=7bff83',
                      userImage:
                          'https://instagram.fada1-14.fna.fbcdn.net/v/t51.2885-19/120890281_1112330992515340_8601083237573261103_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fada1-14.fna.fbcdn.net&_nc_cat=104&_nc_ohc=E9oeHwTJksQAX_OAf-w&tn=JGJdNZQr657M0thX&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT95EN0BFYOYSe-P8ThoD5p6KMZ0HaX58_BAu2w8F8IVmg&oe=6263549B&_nc_sid=7bff83',
                      userName: 'kursadsahin_',
                    ),
                    Post(
                      image:
                          'https://pbs.twimg.com/media/FQm6tK1XMAM_yRi?format=jpg&name=4096x4096',
                      userImage:
                          'https://pbs.twimg.com/profile_images/1499325831268777985/mA2dQb-o_400x400.jpg',
                      userName: 'trabzonspor',
                    )
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class Post extends StatefulWidget {
  final String userImage;
  final String userName;
  final String image;

  const Post({
    Key key,
    this.userName,
    this.userImage,
    this.image,
  }) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.userImage),
                      radius: 15,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(widget.userName),
                    SizedBox(
                      width: 200,
                    ),
                    Text(
                      '...',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Image.network(
                  widget.image,
                  width: 400,
                  height: 350,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        color: _hasBeenPressed ? Colors.red : Colors.black,
                        onPressed: () {
                          setState(() {
                            _hasBeenPressed = !_hasBeenPressed;
                          });
                        },
                        icon: Icon(Icons.favorite),
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.message_outlined),
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.send_outlined),
                        iconSize: 30,
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.save_outlined),
                        iconSize: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






















// class Post extends StatefulWidget {
//   final String userImage;
//   final String userName;
//   final String image;

//   const Post({
//     Key key,
//     this.userName,
//     this.userImage,
//     this.image,
//   }) : super(key: key);

//   @override
//   State<Post> createState() => _PostState();
// }

// class _PostState extends State<Post> {
//   bool _hasBeenPressed = false;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 20),
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Card(
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     CircleAvatar(
//                       backgroundImage: NetworkImage(widget.userImage),
//                       radius: 15,
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Text(widget.userName),
//                     SizedBox(
//                       width: 200,
//                     ),
//                     Text(
//                       '...',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 Image.network(
//                   widget.image,
//                   width: 400,
//                   height: 350,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Row(
//                     children: <Widget>[
//                       IconButton(
//                         color: _hasBeenPressed ? Colors.blue : Colors.black,
//                         onPressed: () {
//                           setState(() {
//                             _hasBeenPressed = !_hasBeenPressed;
//                           });
//                         },
//                         icon: Icon(Icons.favorite_border),
//                         iconSize: 30,
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.message_outlined),
//                         iconSize: 30,
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.send_outlined),
//                         iconSize: 30,
//                       ),
//                       SizedBox(
//                         width: 150,
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.save_outlined),
//                         iconSize: 30,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
