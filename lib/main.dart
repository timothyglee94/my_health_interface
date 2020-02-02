// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:english_words/english_words.dart';


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