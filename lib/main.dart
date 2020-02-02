// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:fit_kit/fit_kit.dart';
import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;



// main.dart
import 'package:flutter/material.dart';

void main() => runApp(new MusicParty());

class MusicParty extends StatelessWidget {
  String title = 'MHI Suite';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new HomePage(title),
    );
  }
}


void readAll() async {
  if (await FitKit.requestPermissions(DataType.values)) {
    for (DataType type in DataType.values) {
      final results = await FitKit.read(
        type,
        dateFrom: DateTime.now().subtract(Duration(days: 5)),
        dateTo: DateTime.now(),
      );
    }
  }
}