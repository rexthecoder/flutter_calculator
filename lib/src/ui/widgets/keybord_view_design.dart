import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'display_state.dart';

class KeyboardKey extends StatelessWidget {
  KeyboardKey(this._keyValue);

  final _keyValue;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: NeumorphicText(
        "$_keyValue",
        style: NeumorphicStyle(
          depth: 40, //customize depth here
          color: Colors.white, //customize color here
        ),
        textStyle: NeumorphicTextStyle(
          fontSize: 50,
        ),
      ),
      color: Color(0xFF3E3E3E),
      onPressed: () {
        addKey(_keyValue);
      },
    );
  }
}
