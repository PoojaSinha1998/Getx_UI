

import '../model/homepage_model.dart';
import 'base_network.dart';

class HomeDataSource{
  static HomeDataSource instance = HomeDataSource();

  Future<List<Items>?> loadHomeData(){
    return BaseNetwork.get("feed");
  }


}