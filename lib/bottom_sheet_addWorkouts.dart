import 'package:flutter/material.dart';

class Modal{
  mainbottomSheet(BuildContext context){
    showBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Column(
          children: <Widget>[
            Padding(
              padding: new EdgeInsets.all(10),
              child: new TextField(),
            ),
            Center(
              child: new FlatButton(
                child: new Text("Add Workout"),
                onPressed: () {},
              ),
            )
          ],
        );
      }
    );
  }
}