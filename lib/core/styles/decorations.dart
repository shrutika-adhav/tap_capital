import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

 var kTextFieldDecoration =  InputDecoration(
    prefixIcon:const Icon(Icons.search,
      color: Colors.grey,),
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide.none,
    ),
    // Ensure no border on focus or other states
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide.none,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide.none,
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide.none,
    ),
    hintText: AppConstants.searchControllerHintText,
    hintStyle:const TextStyle(
        color: Colors.grey
    )
);