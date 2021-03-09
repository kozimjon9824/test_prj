import 'package:flutter/material.dart';
import 'package:test_prj/constant/colors.dart';
import 'package:test_prj/constant/styles.dart';

class VerticalItemCard extends StatelessWidget {
  String title;


  VerticalItemCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: ProjectColor.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(1.3,1.7),
                color: Colors.black26,
                blurRadius: 2.1,
                spreadRadius: 1.5
            )
          ]
      ),
      height: 140.0,
      child: Center(child: Text('$title',style: sectionStyle,),),
    );
  }
}

