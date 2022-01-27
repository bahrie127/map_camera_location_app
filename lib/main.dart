import 'package:flutter/material.dart';
import 'package:map_camera_location_app/providers/great_places.dart';
import 'package:map_camera_location_app/screens/add_place_screen.dart';
import 'package:map_camera_location_app/screens/place_detail_screen.dart';
import 'package:provider/provider.dart';
import './screens/place_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          //primarySwatch: Colors.blue,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.indigo,
            accentColor: Colors.amber,
          ),
        ),
        home: const PlaceListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
          PlaceDetailScreen.routeName: (ctx) => PlaceDetailScreen(),
        },
      ),
    );
  }
}
