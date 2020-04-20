import 'dart:io';

import 'package:hotel365/core/models/attractions_listing.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_config/flutter_config.dart';


/// The service responsible for networking requests

class API {

  static const endpoint = 'https://tripadvisor1.p.rapidapi.com';

  var client = new http.Client();

  Future <List<Attractions>> getAttractions() async {

    var attractions = List<Attractions>();

    var response = await http.get('$endpoint/attractions/list?', headers: {HttpHeaders.authorizationHeader:"d8f7bf5878msh786c42f94b33ca8p10d061jsn0dd4c054471d"});

    //parsed into list
    var parsedList = json.decode(response.body) as List<dynamic>;

    // loop and convert each item to Attraction
    for (var attraction in parsedList) {
      attractions.add(Attractions.fromJson(attraction));
    }

    print(attractions);

  }

}
