import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final Color fontColor;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String? errorText;
  final String hint;
  final bool obsecure;

  AppTextField({
    required this.textEditingController ,
    this.textInputType = TextInputType.text,
    this.fontColor = Colors.grey,
    required this.prefixIcon,
    required this.hint,
    required this.obsecure,
    this.suffixIcon,
    this.errorText ='',
    t
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: textInputType,
      // maxLength: 45,
      // buildCounter: (context,
      //     {required int currentLength,
      //     required bool isFocused,
      //     maxLength}) {
      //   return Text('1:45');
      // },

      // readOnly: true,

      onTap: () {
        print('');
      },

      textCapitalization: TextCapitalization.characters,

      minLines: 1,
      // maxLines: 3,

      style: TextStyle(color: Colors.grey),
      showCursor: false,
      cursorWidth: 5,
      cursorColor: Colors.pink,

      onChanged: (value) {},
      obscureText: obsecure,
      decoration: InputDecoration(
        constraints: BoxConstraints(minHeight: 0, maxHeight: 80),

        contentPadding: EdgeInsetsDirectional.zero,
        // contentPadding: EdgeInsetsDirectional.symmetric(),

        // counterText: '',
        hintText: errorText,
        hintMaxLines: 1,
        hintStyle: TextStyle(
          color: fontColor,
        ),
        labelText: 'Email',
        labelStyle: TextStyle(
          color: fontColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelStyle: TextStyle(
          color: fontColor,
        ),

        // fillColor: Colors.orange,
        filled: true,

        prefixIcon: Icon(
            prefixIcon
        ),
        prefixText: 'ucas_',
        // prefix: Icon(Icons.email),
        prefixStyle: TextStyle(color: Colors.red),

        suffixIcon: Icon(suffixIcon),
        suffixStyle: TextStyle(color: Colors.black26),
        suffixText: 'ucas.ps',

        // enabled: false,
        // disabledBorder: InputBorder.none,
        // disabledBorder: UnderlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.red,
        //     width: 5,
        //   ),
        //   borderRadius: BorderRadius.circular(10),
        // ),
        disabledBorder: getBorder(),
        enabledBorder:getBorder(borderColor: Colors.blue),

        helperText: 'naji@gmail.com',
        helperStyle: TextStyle(color: Colors.red),
        helperMaxLines: 1,

        errorBorder: getBorder(borderColor: Colors.red),
        errorMaxLines: 1,
        errorText: errorText,


      ),
    );
  }

  OutlineInputBorder getBorder ({Color borderColor = Colors.grey}){
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
