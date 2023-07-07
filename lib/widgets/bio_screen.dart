import 'package:flutter/material.dart';

class BioWidget extends StatelessWidget {

  BioWidget({
    required this.iconLeading,
    required this.title,
    required this.subtitle,
    required this.trallingIcon,
    this.marginBottom =0,
  });

  final IconData iconLeading;
  final String title;
  final String subtitle;
  final IconData trallingIcon;
  final int marginBottom;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(iconLeading),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(trallingIcon),
      ),
    );
  }


}
