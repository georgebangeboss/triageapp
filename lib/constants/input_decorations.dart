import 'package:flutter/material.dart';

const signInInputDecor=InputDecoration(
  labelStyle: TextStyle(
    fontStyle: FontStyle.italic,
  ),
//  fillColor: Colors.white,
//  filled: true,
  errorStyle: TextStyle(
    color: null,
    height: 0,
  ),
  enabledBorder:OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.yellow,
      width: 2.0,
    ),
  ),
  focusedBorder:OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
      width: 4.0,
    ),
  ),
);