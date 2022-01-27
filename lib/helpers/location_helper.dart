import 'dart:convert';
import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = 'AIzaSyCU-Dow7-5q6V1BQle9Llcu-iE3GjcVe4o';
class LocationHelper {
  static String generateLocationPreviewImage({double latitude = 0.0, double longitude = 0.0,}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    final url = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY';
    final response = await http.get(Uri.parse(url));
    print(response.body);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}