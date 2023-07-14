import 'package:bus_way/screens/about_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/bio_screen.dart';
import 'about_app_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // @override
  // void setState(VoidCallback fn) {
  //   // TODO: implement setState
  //   super.setState(fn);
  //   ++counter;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     setState(() {
      //       ++counter;
      //     });
      //   },
      // ),
      appBar: AppBar(
        title: Text('Flutter'),
        // centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.yellow,
          ),
        ),
        toolbarHeight: 56,
        leading: InkWell(
          onTap: () {},
          child: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutAppScreen(message: 'NajiAMousa'),
                ),
              );
              // Navigator.pushNamed(
              //   context,
              //   '/about_screen',
              //   arguments: {'message' : 'najiPass'},
              // );
            },
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(
              minWidth: 0,
            ),
          ),
          PopupMenuButton(
            offset: Offset(-10, 40),
            // enabled: false,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text('About'),
                )
              ];
            },
          )
        ],
        // titleSpacing: 0,
      ),
      body: Stack(
        children: [
          // Image(
          //   height: double.infinity,
          //   fit: BoxFit.cover,
          //   image: NetworkImage(
          //       'https://www.cairo24.com/Upload/libfiles/79/6/50.jpg'),
          // ),
          Image.asset(
            'images/img.jpg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'data',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 25,
                color: Colors.deepOrange,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.lineThrough,
                decorationThickness: 2,
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage('/images/img.jpg)'),
              //   fit: BoxFit.fill,
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 0),
                  blurRadius: 6,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellow,
              gradient: LinearGradient(
                begin: AlignmentDirectional.center,
                end: AlignmentDirectional.centerEnd,
                colors: [
                  Colors.black,
                  Colors.black26,
                ],
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          BioWidget(
            iconLeading: Icons.email,
            title: 'Email',
            subtitle: 'subtitle',
            trallingIcon: Icons.send,
            marginBottom: 16,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(10),
                ),
              ),
            ),
            child: Text('data'),
          ),
          // Visibility(
          //   visible: _ccurrentPage < 2,
          //   maintainState: true,
          //   maintainSize: true,
          //   child: IconButton(
          //     icon: Icon(Icons.arrow_back_ios),
          //     onPressed: () {},
          //   ),
          // ),
        ],
      ),
    );
  }
}
