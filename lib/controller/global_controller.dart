import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/homepage_model.dart';
import '../network/covid_data_source.dart';

class GlobalController extends GetxController {
  HomeDataSource? homeDataSource;

  GlobalController({this.homeDataSource});

  Rx<HomePageModel?> globalEntity = HomePageModel().obs;
  var globalEntityItems = <Items>[].obs;


  @override
  void onInit() {
    print("GlobalController - onInit");
    fetchGlobalData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void fetchGlobalData() async {
    try {
     List<Items>? data = await homeDataSource?.loadHomeData();
      print("cek bay 1 ${data}");
     if (data != null) {
       print("cek bay 1 ${data.first}");
       globalEntityItems.assignAll(data);
     }

    } finally {

    }
  }



}
