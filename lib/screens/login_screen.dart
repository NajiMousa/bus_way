import 'package:flutter/material.dart';

import '../widgets/app_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  String? _emailErrorText;
  String? _passwordErrorText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body:
      // Container(
      //   width: 390,
      //   height: 844,
      //   clipBehavior: Clip.antiAlias,
      //   decoration: BoxDecoration(color: Color(0xFFED4B00)),
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         left: -205,
      //         top: -239,
      //         child: Container(
      //           width: 774,
      //           height: 921,
      //           decoration: ShapeDecoration(
      //             color: Colors.white,
      //             shape: OvalBorder(),
      //           ),
      //         ),
      //       ),
      //       Positioned(
      //         left: 95,
      //         top: 222,
      //         child: Container(
      //           width: 200,
      //           height: 329.50,
      //           child: Image.asset('images/img.png'),
      //           decoration: BoxDecoration(
      //             // image: DecorationImage(
      //             //   // image:
      //             //   fit: BoxFit.fill,
      //             // ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // )
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WelcomeBack',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              'Enter Email & Password',
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            AppTextField(
              textEditingController: _emailTextEditingController,
              prefixIcon: Icons.email,
              hint: 'email',
              obsecure: false,
              textInputType: TextInputType.emailAddress,
              errorText: _emailErrorText,
            ),
            SizedBox(
              height: 10,
            ),
            AppTextField(
              textEditingController: _passwordTextEditingController,
              prefixIcon: Icons.password,
              hint: 'password',
              obsecure: true,
              textInputType: TextInputType.phone,
              errorText: _passwordErrorText,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                performLogin();
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Solid - Single Responsibility
  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      checkErrors();
      return true;
    }
    checkErrors();
    showMessage(message: 'Enter require Field',error: true);
    return false;
  }

  void checkErrors() {
    setState(() {
      _emailErrorText = _emailTextEditingController.text.isEmpty
          ? 'Enter Email Address'
          : null;
      _passwordErrorText =
          _passwordTextEditingController.text.isEmpty ? 'Enter Password' : null;
    });
  }

  void login() {
    showMessage(message: 'Login successfully');
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/mainScreen');
      },
    );
  }

  void showMessage({required String message , bool error = false}){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.green,
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsetsDirectional.only(end: 30,start: 30,bottom: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        action: SnackBarAction(onPressed: () {},label: 'Done',textColor: Colors.red),
        onVisible: () => print('onVisible'),
        elevation: 0,
      ),
    );
  }
}
