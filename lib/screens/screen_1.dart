import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../components/horizontal_item.dart';
import '../components/vertical_item.dart';
import '../constant/colors.dart';
import '../constant/styles.dart';
import '../providers/horizontal_items.dart';
import '../providers/vertical_items.dart';

class Screen1 extends StatelessWidget {
  Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  double widthCard;
  @override
  Widget build(BuildContext context) {
    widthCard=MediaQuery.of(context).size.width-56;
    final horizontalDataProvider=Provider.of<HorizontalItemsProvider>(context);
    final verticalDataProvider=Provider.of<VerticalItemsProvider>(context);

    return Scaffold(
      backgroundColor: ProjectColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: ()=>Navigator.pop(context),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/close.png',width: 15.0,height: 15.0,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: lines_longer_than_80_chars
              child: Text('Section 1 (${horizontalDataProvider.itemsCount})',style: sectionStyle),
            ),


            Container(
              height: 140.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: horizontalDataProvider.itemsCount,
                  itemBuilder: (context,index){
                    // ignore: lines_longer_than_80_chars
                    return HorizontalCardItem(widthCard: widthCard,title: horizontalDataProvider.itemAt(index),);
                  }),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: lines_longer_than_80_chars
              child: Text('Section 2 (${verticalDataProvider.itemsCount})',style: sectionStyle),
            ),


            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: verticalDataProvider.itemsCount,
                  itemBuilder: (context,index){
                    return VerticalItemCard(verticalDataProvider.itemAt(index));
                  }),
            ),


          ],
          ),
        ),
      ),
    );
  }
}

