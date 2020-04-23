import 'dart:io';
import 'package:hotel365/core/models/attractions_listing.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hotel365/utils/secrets.dart';

/// The service responsible for networking requests

class API {

  Future<Secret> secret = SecretLoader(secretPath: "secrets.json").load();

  static const endpoint = 'https://tripadvisor1.p.rapidapi.com';

  var client = new http.Client();

  Future <List<Attractions>> getAttractions() async {

    var attractions = List<Attractions>();

    var response = await http.get('$endpoint/attractions/list?', headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: '$secret'});

    //parsed into list
    var parsedList = json.decode(response.body) as List<dynamic>;

    // loop and convert each item to Attraction
    for (var attraction in parsedList) {
      attractions.add(Attractions.fromJson(attraction));
    }

    return attractions;

  }

}
