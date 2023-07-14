import 'package:flutter/material.dart';

class ArticlesScreen extends StatefulWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    // return ListView.separated(
    //   itemCount: 10,
    //   separatorBuilder: (context, index) {
    //     return Divider(
    //       indent: 20,
    //       endIndent: 20,
    //       color: Colors.pink,
    //     );
    //   },
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       leading: Icon(Icons.person),
    //       title: Text('data'),
    //       subtitle: Text('data'),
    //     );
    //   },
    // );

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.person),
          title: Text('data'),
          subtitle: Text('data'),
        );
      },
    );
  }
}
