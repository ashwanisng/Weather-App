import 'dart:ui';

import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontSize: 100.0,
  fontFamily: 'Rubik-Regular',
);
const kConditionStyle = TextStyle(
  fontSize: 100.0,
  fontFamily: 'Rubik-Regular',
);

const kMessageTextStyle = TextStyle(
  fontSize: 60.0,
  fontFamily: 'Source Code Pro',
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Rubik-Regular',
);

const kTextFeildInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter City Name',
  hintStyle: TextStyle(color: Colors.grey),
  icon: Icon(Icons.location_city),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    borderSide: BorderSide.none,
  ),
);
