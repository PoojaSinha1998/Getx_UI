import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Image.asset("assets/images/logo.png"),
            Container(
              width: MediaQuery.of(context).size.width/2.5,
              height: 50,
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 13.0, color: Colors.black),

                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  filled: true,
                  fillColor: AppColors.greyColor,
                  contentPadding: const EdgeInsets.only(
                      left: 14.0, bottom: 6.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.greyColor),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.greyColor),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    ), // icon is 48px widget.
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(

          children: [
            Container(
              height: 40.0,
              // width: MediaQuery.of(context).size.width/3,
              decoration: new BoxDecoration(
                color: AppColors.lightYellow,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text(
                      'Shopbuzz',
                      style: AppStyles.textLabel,
                    ),
                    Icon(Icons.search)
                  ],),
              ),
            ),
            Icon(Icons.search)
          ],
        ),
      ],
    );
  }
}