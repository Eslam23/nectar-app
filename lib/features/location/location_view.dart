import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/location/view/widget/location_view_body.dart';
class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return exit(0);
      },
      child: const Scaffold(
        body: LocationViewBody(),
      ),
    );
  }
}
