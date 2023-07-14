import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 24,
        childAspectRatio: 132/214
      ),
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          color: Colors.pink,
        );
      },
    );
    // return GridView(
    //   padding: EdgeInsetsDirectional.symmetric(vertical: 20,horizontal: 20,),
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 3,
    //     // mainAxisExtent: 100,
    //     crossAxisSpacing: 10,
    //     mainAxisSpacing: 10,
    //     childAspectRatio: 114/125 //width/higth
    //   ),
    //   children: [
    //     Card(color: Colors.pink,),
    //     Card(color: Colors.pink,),
    //     Card(color: Colors.pink,),
    //     Card(color: Colors.pink,),
    //   ],
    // );
  }
}
