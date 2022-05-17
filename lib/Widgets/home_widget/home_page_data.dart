import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:readmore/readmore.dart';
import 'package:ui_sample/model/homepage_model.dart';
import 'package:ui_sample/util/theme.dart';

Widget homePageData(BuildContext context, RxList<Items> globalEntityItems) {
  return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: globalEntityItems.length,
      itemBuilder: (_, index) {
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)),
          elevation: 2,
          color: Colors.white,
          child: Container(
            height: 400,
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
              child: Flexible(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: AppColors.brownColor,
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset("assets/images/redbull_icon.png",width: 40,height: 40,fit: BoxFit.cover,))),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Red Bull", style: AppStyles.textLabel
                                    .copyWith(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                Text("2 hours ago",  style: AppStyles.textLabel
                                    .copyWith(fontSize: 12,color: AppColors.textcolor),),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                height: 20,

                                child: Image.asset("assets/images/share.png")),
                            SizedBox(width: 10,),
                            Container(
                                height: 20,

                                child: Image.asset("assets/images/more.png")),
                            SizedBox(width: 10,),
                          ],
                        ),

                      ],
                    ),
                    Flexible(
                      child: ReadMoreText(
                        '${globalEntityItems[index].text}',
                        style:  TextStyle(color: Colors.black),
                        trimLines: 2,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Length,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Colors.grey),
                        lessStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Colors.grey),
                      ),
                    ),
                    Image.asset("assets/images/poster.png",height: 250,width: MediaQuery.of(context).size.width,fit: BoxFit.fitWidth,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 20,

                                  child: Image.asset("assets/images/thumbs.png")),
                              SizedBox(width: 10,),
                              Text("256", style: AppStyles.textLabel
                                  .copyWith(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w600),),
                              SizedBox(width: 10,),
                              Image.asset("assets/images/more_colored.png",height: 30,width: 30,),
                              SizedBox(width: 10,),
                              Text("320", style: AppStyles.textLabel
                                  .copyWith(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w600),),
                              SizedBox(width: 5,),
                              Text("All reactions",  style: AppStyles.textLabel
                                  .copyWith(fontSize: 12,color: AppColors.textcolor),),
                            ],
                          ),
                          
                          Row(
                            children: [
                              Text("15", style: AppStyles.textLabel
                                  .copyWith(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w600),),
                              SizedBox(width: 5,),
                              Image.asset("assets/images/chat.png",width: 20,height: 20,),
                            ],
                          )


                        ],
                      ),
                    ),

                  ],
                ),
              ),

                // Text("${globalEntityItems[index].text}",style: TextStyle(color: Colors.black),),
              )
        );
      });
}