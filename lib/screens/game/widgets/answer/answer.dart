// Copyright (C) 2018 Alberto Varela Sánchez <alberto@berriart.com>
// Use of this source code is governed by the version 3 of the
// GNU General Public License that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../../../domain/index.dart' hide Color;
import '../../../../widgets/numcol_button.dart';
import '../reply/reply.dart';

typedef void AnswerCallback(Answer val);

const gameNumbers = {
  Number.one: '1',
  Number.two: '2',
  Number.three: '3',
  Number.four: '4',
  Number.five: '5',
  Number.six: '6',
  Number.seven: '7',
  Number.eight: '8',
  Number.nine: '9',
};

class AnswerWidget extends AnimatedWidget {
  AnswerWidget({Key key, @required this.answer})
    : super(key: key, listenable: answer);

  final ValueNotifier<Answer> answer;

  @override
  Widget build(BuildContext context) {
    return NumcolButton(
      color: answer.value.color,
      text: gameNumbers[answer.value.number],
      onPressed: () => ReplyInheritedWidget.of(context).reply.value = answer.value,
    );
  }
}
