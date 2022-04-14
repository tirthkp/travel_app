// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String imgpath;
  final String name;
  const Category({Key? key, required this.imgpath, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 238, 237, 237),
        ),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imgpath,
                height: 30,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
