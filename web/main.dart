// Copyright (c) 2016, Lukas Muller. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'algorithms.dart';

InputElement wordFieldSelector = querySelector("#word_field");
DivElement wrapperSelector = querySelector("#wrapper");
SpanElement resultSelector = querySelector("#result");


void main() {
  setup();
}

// MARK: Setup
void setup() {
  setupListeners();
}

void setupListeners() {
  wordFieldSelector.onInput.listen(typeEvent);
}

// MARK: Listener Functions
void typeEvent(Event event) {
  var color = "#${combine(wordFieldSelector.value)}";
  resultSelector.text = color;
  wrapperSelector.style.backgroundColor = color;
}
