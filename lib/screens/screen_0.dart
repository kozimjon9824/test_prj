import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../constant/colors.dart';
import '../constant/styles.dart';
import 'screen_1.dart';

// ignore: must_be_immutable
class Screen0 extends StatelessWidget {
  Screen0({Key key}) : super(key: key);


  static const routeName = '/';

  double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight=MediaQuery.of(context).size.height;
    var isBig=screenHeight> 600.0;

    return Scaffold(
      backgroundColor: ProjectColor.grey,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 16.0),
        child: Container(
          height: isBig ? 600.0:double.infinity,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                     Align(
                        alignment: Alignment.center,
                        child: Text('Title'
                            ,style: titleStyle,textAlign: TextAlign.center)),
                      GestureDetector(
                        onTap: (){
                          SystemNavigator.pop();
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset('assets/close.png',width: 15.0,height: 15.0,),
                        ),
                      ),
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 0.0,16.0, 8.0),
                  child: Text(textTopData),
                ),

                isBig?ReusableWidget2():ReusableWidget(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    // ignore: lines_longer_than_80_chars
                    onTap: () => Navigator.of(context).pushNamed(Screen1.routeName),
                    child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          color: ProjectColor.purple
                        ),
                        child: const Padding(
                          // ignore: lines_longer_than_80_chars
                          padding: EdgeInsets.symmetric(vertical: 14.0,horizontal: 24.0),
                          // ignore: lines_longer_than_80_chars
                          child: Text('TEST BUTTON',style: TextStyle(color: ProjectColor.white),),
                        )),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

}

class ReusableWidget extends StatelessWidget {
  const ReusableWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  400.0,
      color: ProjectColor.lightGrey,
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          // ignore: lines_longer_than_80_chars
          child: Text(textData+textData+textData+textData+textData+textData),
        ),
      ),
    );
  }
}


class ReusableWidget2 extends StatelessWidget {
  const ReusableWidget2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: ProjectColor.lightGrey,
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            // ignore: lines_longer_than_80_chars
            child: Text(textData+textData+textData+textData+textData+textData),
          ),
        ),
      ),
    );
  }
}
