import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
   AboutScreen({Key? key}) : super(key: key);
String _message = 'messageText';
  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if(modalRoute != null){
      Map<String, dynamic> argument = modalRoute.settings.arguments as Map<String, dynamic>;
      if(argument.containsKey('message')){
        _message = argument['message'];
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
