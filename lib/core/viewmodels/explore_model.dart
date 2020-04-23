import 'package:flutter/foundation.dart';
import 'package:hotel365/core/enums/viewstate.dart';
import 'package:hotel365/core/models/attractions_listing.dart';
import 'package:hotel365/core/services/api.dart';
import 'package:hotel365/core/viewmodels/base_model.dart';
import 'package:hotel365/service_locator.dart';

class ExplorePageModel extends BaseModel {

  API _api = locator<API>();

  List<Attractions> attractions;
  
  Future getAttractions() async {
    setState(ViewState.Busy);
    attractions = await _api.getAttractions();
    setState(ViewState.Idle);
  }

}