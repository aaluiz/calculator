import 'package:calculator/components/ButtonRow.dart';
import 'package:calculator/components/button.dart';
import 'package:flutter/material.dart';

class Keybord extends StatelessWidget {
  final void Function(String) cb;

  Keybord(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.big(text: 'AC', color: Button.DARK, cb: cb),
            Button(text: '%', color: Button.DARK, cb: cb),
            Button.operation(text: '/', color: Button.DARK, cb: cb),
          ]),
          SizedBox(height: 2),
          ButtonRow([
            Button(text: '9', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '7', cb: cb),
            Button.operation(text: 'x', cb: cb),
          ]),
          SizedBox(height: 2),
          ButtonRow([
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button.operation(text: '-', cb: cb),
          ]),
          SizedBox(height: 2),
          ButtonRow([
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button.operation(text: '+', cb: cb),
          ]),
          SizedBox(height: 2),
          ButtonRow([
            Button.big(text: '0', cb: cb),
            Button(text: '.', cb: cb),
            Button.operation(text: '=', cb: cb),
          ]),
        ],
      ),
    );
  }
}
