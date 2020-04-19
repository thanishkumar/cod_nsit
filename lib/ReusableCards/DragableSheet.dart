import 'package:flutter/material.dart';

class dragableSheetCard extends StatelessWidget {

   dragableSheetCard({@required this.function,this.color,this.text});

    Function function;
    Color color;
   String text;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
              onPressed: function,
              color: color,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              child: Text(
                '$text',
              ),
            );
  }
}