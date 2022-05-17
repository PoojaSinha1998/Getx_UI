import 'package:flutter/material.dart';
import 'package:ui_sample/util/theme.dart';

Widget filterOption(BuildContext context) {
  return Center(
    child: Container(
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.sort,size: 20,),
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width-30,
            child: ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: 9,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Card(

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17.0)),
                      elevation: 4,
                      color: Colors.white,
                      child: Container(

                          decoration: BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.grey,
                                blurRadius: .5,
                                spreadRadius: 0.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 10  horizontally
                                  1.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(13.0),
                            color: AppColors.whiteColor,
                            border: Border.all(
                              width: 0.5,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:10.0,right: 10,top: 10,bottom: 10),
                            child: Text("Photos",style: TextStyle(color: Colors.black),),
                          )),
                    ),
                  );
                }),
          ),
        ],
      ),
    ),
  );
}