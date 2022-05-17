import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:ui_sample/model/homepage_model.dart';
import 'package:ui_sample/util/theme.dart';

Widget AddPost(BuildContext context) {
  return Center(
    child:  Card(

  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(17.0)),
  elevation: 4,
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17.0),
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
          child: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_circle_outline_outlined,size: 20,color: AppColors.lightBlue,),
              SizedBox(width: 10,),
              Text("Add post", style: AppStyles.textLabel
                  .copyWith(fontSize: 14,color: AppColors.lightBlue),),
            ],
          )),
      ),
    ),
  );
}