import 'package:flutter/material.dart';
import 'package:flutter_calculator/src/ui/global/operator_function.dart';

var _displayState = new DisplayState();

class Display extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _displayState;
  }
}

class DisplayState extends State<Display> {
  var _expression = '';
  var _result = '';

  @override
  Widget build(BuildContext context) {
    var views = <Widget>[
      new Expanded(
          flex: 2,
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Text(
                _expression,
                textAlign: TextAlign.right,
                style: new TextStyle(
                  fontSize: 50.0,
                  color: Colors.black,
                ),
              ))
            ],
          )),
    ];

    if (_result.isNotEmpty) {
      views.add(
        new Expanded(
            flex: 1,
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new Text(
                  _result,
                  textAlign: TextAlign.right,
                  style: new TextStyle(
                    fontSize: 50.0,
                    color: Colors.black,
                  ),
                ))
              ],
            )),
      );
    }

    return new Expanded(
        flex: 2,
        child: new Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFFF1F1F1),
              Color(0xFFCFCFCF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          padding: const EdgeInsets.all(16.0),
          child: new Column(
            children: views,
          ),
        ));
  }
}

void addKey(String key) {
  var _expr = _displayState._expression;
  var _result = '';
  if (_displayState._result.isNotEmpty) {
    _expr = '';
    _result = '';
  }

  if (operators.contains(key)) {
    // Handle as an operator
    if (_expr.length > 0 && operators.contains(_expr[_expr.length - 1])) {
      _expr = _expr.substring(0, _expr.length - 1);
    }
    _expr += key;
  } else if (digits.contains(key)) {
    // Handle as an operand
    _expr += key;
  } else if (key == '⬅️') {
    // Delete last character
    if (_expr.length > 0) {
      _expr = _expr.substring(0, _expr.length - 1);
    }
  } else if (key == '=') {
    try {
      var parser = const Parser();
      _result = parser.parseExpression(_expr).toString();
    } on Error {
      _result = 'Invalid 😥';
    }
  }
  // ignore: invalid_use_of_protected_member
  _displayState.setState(() {
    _displayState._expression = _expr;
    _displayState._result = _result;
  });
}
