import 'package:flutter/material.dart';

class AboutAppScreen extends StatefulWidget {

  final message;

  AboutAppScreen({ required this.message});


  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(widget.message),
    //     leading: IconButton(
    //       onPressed: () => Navigator.pop(context),
    //       icon: Icon(Icons.arrow_back_ios),
    //     ),
    //   ),
    //   body: Center(
    //     child: Text('data'),
    //   ),
    // );
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (value) {
          print('currentPage: $value');
        },
        children: [

          Container(color: Colors.green),
          Container(
            child: Column(
              children: [
                Text('ddddddd'),
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    _pageController.previousPage(
                        duration: Duration(seconds: 2), curve: Curves.easeIn);
                  },
                ),
              ],
            ),
          ),
          Container(color: Colors.orange),
        ],
      ),
    );
  }
}
