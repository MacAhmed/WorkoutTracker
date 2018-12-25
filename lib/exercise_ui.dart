import 'package:flutter/material.dart';

class ExerciseList extends StatelessWidget {  
  Widget _createListItem(context, exerciseName, {int sets, int reps}){
    return Container(
      child: Card(
        child: Padding(
          padding: new EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Padding(
                padding: new EdgeInsets.only(bottom: 10),
                child: new Text(
                  exerciseName,
                  textScaleFactor: 1.5,
                  style: new TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: new EdgeInsets.only(left: 30),
                child :Row(
                  children: <Widget>[
                      Center( 
                        child: new Text("Reps", style: new TextStyle(fontWeight: FontWeight.w700),),
                      ),
                      Expanded(
                      child: Center( 
                        child: new Text(sets.toString()),
                      )
                    ),
                    Expanded(
                      child: Center( 
                        child: new Text("Sets", style: new TextStyle(fontWeight: FontWeight.w700),),
                      )
                    ),
                    Expanded(
                      child: Center( 
                        child: new Text(reps.toString()),
                      )
                    ),
                    Flexible(
                      child: Center( 
                        child: new IconButton(
                          icon: new Icon( Icons.arrow_forward ),
                          onPressed: () {},
                        )
                      )
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise List"),
      ),
      body: Center(
        child: new ListView(
          children: <Widget>[
            Center(
              child: _createListItem(context, "Leg Extensions", reps: 12, sets: 5),
            ),
            Center(
              child: _createListItem(context, "Seated Leg Curls", reps: 12, sets: 5),
            ),
            Center(
              child: _createListItem(context, "Barbell Squat", reps: 12, sets: 5),
            ),
            Center(
              child: _createListItem(context, "Stiff-Legged Barbell Deadlift", reps: 12, sets: 5),
            ),
            Center(
              child: _createListItem(context, "Seated Leg Curl", reps: 12, sets: 5),
            ),
            Center(
              child: _createListItem(context, "Dip/Leg Raise Combo", reps: 12, sets: 5),
            ),
          ],
        )
      ),
    );
  }
}