import 'package:flutter/material.dart';
import 'package:test_prj/constant/colors.dart';
import 'package:test_prj/constant/styles.dart';

class HorizontalCardItem extends StatelessWidget {
  String title;

  HorizontalCardItem({
    Key key,
    @required this.widthCard,
    @required this.title
  }) : super(key: key);

  final double widthCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      padding: EdgeInsets.only(left: 16.0),
      width: widthCard,
      child: Card(
        elevation: 7.6,
        shadowColor: ProjectColor.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Center(child: Text('$title',style: sectionStyle,),),
      ),
    );
  }
}
