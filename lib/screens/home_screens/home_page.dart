import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/app_bar_widget.dart';
import '../../Widgets/home_widget/add_post.dart';
import '../../Widgets/home_widget/filter_option.dart';
import '../../Widgets/home_widget/home_page_data.dart';
import '../../controller/global_controller.dart';
import '../drawer/custome_app_bar.dart';
import '../drawer/left_drawer.dart';
import '../drawer/right_drawer.dart';
import 'home_controller.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalController _globalController = Get.find<GlobalController>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    _globalController.fetchGlobalData();
    return GetBuilder<GlobalController>(
      builder: (controller) => Scaffold(

        drawer: AppLeftDrawer(),
        endDrawer: AppRightDrawer(),
        appBar: CustomAppBar(child: AppBarWidget(),),
        body:SafeArea(
          child: Container(
            child: Column(
              children: [
                filterOption(context),
                AddPost(context),
                Container(
                    child: Flexible(child: homePageData(context,_globalController.globalEntityItems))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}