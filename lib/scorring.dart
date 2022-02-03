import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scorring{
  int red =0;
  int blue=0;
  int c=0;

  scorring(){
    red = 0;
    blue = 0;
    c=0;
  }

  int doRed(){
    c++;
    red++;
      if(red == 10) {
        return 1;
      }
    return 0;
  }

  int doBlue(){
    c++;
    blue++;
      if(blue == 10) {
        return 1;
      }
    return 0;
  }


}