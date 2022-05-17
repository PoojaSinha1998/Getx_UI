

// import 'package:chalk_coordinator/teacherui/Settings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_sample/util/Size_Config.dart';

import '../../util/theme.dart';


class AppLeftDrawer extends StatefulWidget {
  const AppLeftDrawer({Key? key}) : super(key: key);

  @override
  _AppLeftDrawerState createState() => _AppLeftDrawerState();
}
final List<String> imgList = [
  "assets/images/poster.png",
  "assets/images/poster.png",
  "assets/images/poster.png",
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
  // height: 300,
      child: Card(

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        elevation: 2,
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Column(
              children: <Widget>[
                Image.asset(item, fit: BoxFit.contain, width: 1000.0,height: 150,),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text("Quizzes/Survey",textAlign: TextAlign.start, style: AppStyles.textLabel
                        .copyWith(fontSize: 14,color: AppColors.greenColor,fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            )),
      ),
    ))
    .toList();

final List<Widget> imageSecondSliders = imgList
    .map((item) => Container(
  // height: 300,
  child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: Image.asset(item, fit: BoxFit.fill, width: 1000.0)),
))
    .toList();

class _AppLeftDrawerState extends State<AppLeftDrawer> {

  int _current = 0;

  final CarouselController _controller = CarouselController();
  SharedPreferences? preferences;


  @override
  Widget build(BuildContext context) {

    initilizeShapredPreference();
    return Drawer(

      child: ListView(
        children: [
          Container(
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/profileBackg.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              // padding: EdgeInsets.zero,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),


                Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Align(

                          child: Row(
                            children: <Widget>[

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(height: 25,),
                                  Text("Welcome to the community", style: AppStyles.textLabel
                                      .copyWith(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w600),),
                                  SizedBox(height: 10,),
                                  Row(

                                    children: [
                                      Text("Total people online   :  ", style: AppStyles.textLabel
                                          .copyWith(fontSize: 16,color: AppColors.brownColor,fontWeight: FontWeight.w600),),
                                      Text("1200", style: AppStyles.textLabel
                                          .copyWith(fontSize: 16,color: AppColors.lightBlue,fontWeight: FontWeight.w600),),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top:25.0),
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20.0),
                                              color: AppColors.brownColor,
                                            ),
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.circular(20.0),
                                                child: Image.asset("assets/images/user.png",width: 40,height: 40,fit: BoxFit.cover,))),
                                        SizedBox(width: 5,),
                                        Text("Sormy Curpen", style: AppStyles.textLabel
                                            .copyWith(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child:  Card(

                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)),
                                      elevation: 1,
                                      child: Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width/2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              color: AppColors.greyColor,
                                              blurRadius: .5,
                                              spreadRadius: 0.0, //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 10  horizontally
                                                1.0, // Move to bottom 10 Vertically
                                              ),
                                            ),
                                          ],
                                        ),
                                        child: Center(child:
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset("assets/images/user_colored.png",width: 20,height: 20,),
                                                SizedBox(width: 10,),
                                                Text("Friends", style: AppStyles.textLabel
                                                    .copyWith(fontSize: 14,color: AppColors.lightBlue),),
                                              ],
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [


                                                Text("150", style: AppStyles.textLabel
                                                    .copyWith(fontSize: 14,color: AppColors.lightBlue),),
                                                SizedBox(width: 10,),
                                                Container(
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20.0),
                                                      color: AppColors.brownColor,
                                                    ),
                                                    child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(20.0),
                                                        child: Image.asset("assets/images/user.png",width: 30,height: 30,fit: BoxFit.contain,))),
                                              ],
                                            )
                                          ],
                                        )
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child:  Card(

                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)),
                                      elevation: 1,
                                      child: Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width/2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              color: AppColors.greyColor,
                                              blurRadius: .5,
                                              spreadRadius: 0.0, //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 10  horizontally
                                                1.0, // Move to bottom 10 Vertically
                                              ),
                                            ),
                                          ],
                                        ),
                                        child: Center(child:
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset("assets/images/user_colored.png",width: 20,height: 20,),
                                                SizedBox(width: 10,),
                                                Text("Friends", style: AppStyles.textLabel
                                                    .copyWith(fontSize: 14,color: AppColors.lightBlue),),
                                              ],
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [


                                                Text("150", style: AppStyles.textLabel
                                                    .copyWith(fontSize: 14,color: AppColors.lightBlue),),
                                                SizedBox(width: 10,),
                                                Container(
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20.0),
                                                      color: AppColors.brownColor,
                                                    ),
                                                    child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(20.0),
                                                        child: Image.asset("assets/images/user.png",width: 30,height: 30,fit: BoxFit.contain,))),
                                              ],
                                            )
                                          ],
                                        )
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child:  Card(

                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)),
                                      elevation: 1,
                                      child: Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width/2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              color: AppColors.greyColor,
                                              blurRadius: .5,
                                              spreadRadius: 0.0, //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 10  horizontally
                                                1.0, // Move to bottom 10 Vertically
                                              ),
                                            ),
                                          ],
                                        ),
                                        child: Center(child:
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset("assets/images/user_colored.png",width: 20,height: 20,),
                                                SizedBox(width: 10,),
                                                Text("Friends", style: AppStyles.textLabel
                                                    .copyWith(fontSize: 14,color: AppColors.lightBlue),),
                                              ],
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [


                                                Text("150", style: AppStyles.textLabel
                                                    .copyWith(fontSize: 14,color: AppColors.lightBlue),),
                                                SizedBox(width: 10,),
                                                Container(
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20.0),
                                                      color: AppColors.brownColor,
                                                    ),
                                                    child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(20.0),
                                                        child: Image.asset("assets/images/user.png",width: 30,height: 30,fit: BoxFit.contain,))),
                                              ],
                                            )
                                          ],
                                        )
                                        ),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child:  Card(

                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)),
                                      elevation: 1,
                                      child: Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width/2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          boxShadow: [
                                            new BoxShadow(
                                              color: AppColors.greyColor,
                                              blurRadius: .5,
                                              spreadRadius: 0.0, //extend the shadow
                                              offset: Offset(
                                                1.0, // Move to right 10  horizontally
                                                1.0, // Move to bottom 10 Vertically
                                              ),
                                            ),
                                          ],
                                        ),
                                        child: Center(child:
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset("assets/images/user_colored.png",width: 20,height: 20,),
                                                SizedBox(width: 10,),
                                                Text("Friends", style: AppStyles.textLabel
                                                    .copyWith(fontSize: 14,color: AppColors.lightBlue),),
                                              ],
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [


                                                Text("150", style: AppStyles.textLabel
                                                    .copyWith(fontSize: 14,color: AppColors.lightBlue),),
                                                SizedBox(width: 10,),
                                                Container(
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20.0),
                                                      color: AppColors.brownColor,
                                                    ),
                                                    child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(20.0),
                                                        child: Image.asset("assets/images/user.png",width: 30,height: 30,fit: BoxFit.contain,))),
                                              ],
                                            )
                                          ],
                                        )
                                        ),
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Column(children: [
                                      CarouselSlider(
                                        items: imageSliders,

                                        carouselController: _controller,
                                        options: CarouselOptions(

                                            autoPlay: true,
                                            enlargeCenterPage: true,
                                            aspectRatio: 2/1.5,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                _current = index;
                                              });
                                            }),
                                      ),


                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: imgList
                                            .asMap()
                                            .entries
                                            .map((entry) {
                                          return GestureDetector(
                                            onTap: () => _controller.animateToPage(entry.key),
                                            child: Column(
                                              children: [

                                                Container(
                                                  width: 10.0,
                                                  height: 10.0,
                                                  margin:
                                                  EdgeInsets.symmetric(
                                                      vertical: 5.0, horizontal: 4.0),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: (Theme
                                                          .of(context)
                                                          .brightness == Brightness.dark
                                                          ? Colors.white
                                                          : Colors.green)
                                                          .withOpacity(
                                                          _current == entry.key ? 0.9 : 0.4)),
                                                ),
                                              ],
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ]),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Column(children: [
                                      CarouselSlider(
                                        items: imageSecondSliders,

                                        carouselController: _controller,
                                        options: CarouselOptions(

                                            autoPlay: true,
                                            enlargeCenterPage: true,
                                            aspectRatio: 2/1.2,
                                            onPageChanged: (index, reason) {
                                              setState(() {
                                                _current = index;
                                              });
                                            }),
                                      ),


                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: imgList
                                            .asMap()
                                            .entries
                                            .map((entry) {
                                          return GestureDetector(
                                            onTap: () => _controller.animateToPage(entry.key),
                                            child: Column(
                                              children: [

                                                Container(
                                                  width: 10.0,
                                                  height: 10.0,
                                                  margin:
                                                  EdgeInsets.symmetric(
                                                      vertical: 5.0, horizontal: 4.0),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: (Theme
                                                          .of(context)
                                                          .brightness == Brightness.dark
                                                          ? Colors.white
                                                          : Colors.green)
                                                          .withOpacity(
                                                          _current == entry.key ? 0.9 : 0.4)),
                                                ),
                                              ],
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ]),
                                  ),
                                ],
                              ),


                            ],
                          )),
                    )),

                // TODO: For Testing Purpose..

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem({String? icon, String? text, GestureTapCallback? onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Container(
            height: 20,
            width: 30,
            child: Image.asset(
              icon!,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                text!,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  Future<void> initilizeShapredPreference() async {
    preferences = await SharedPreferences.getInstance();


  }


}


