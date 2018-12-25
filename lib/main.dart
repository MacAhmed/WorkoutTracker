import 'package:flutter/material.dart';
import './exercise_ui.dart';
import './bottom_sheet_addWorkouts.dart';


void main() => runApp(WorkoutList());
class WorkoutList extends StatelessWidget {
  final Modal modal = new Modal();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise Tracker',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exercise Tracker'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                SimpleDialog(
                  children: <Widget>[
                    Text("Hello")
                  ],
                );
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: Builder(
          builder: (context) => 
            Center(
              child: new ListView(
                children: <Widget>[
                  Center(
                    child: Card(
                      child: Padding(
                        padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                heightFactor: 4,
                                child: const Text("Workout 1"),
                              ),
                            ),
                            ViewWorkoutButton(),
                          ],
                        ),
                      )
                    ),
                  ),
                ],
              )
            ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => modal.mainbottomSheet(context),
        //   tooltip: "Add Workout",
        //   child: Icon(Icons.add),
        // ),
      ),
    );
  }
}

class ViewWorkoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Our GestureDetector wraps our button
    return GestureDetector(
      child: new FlatButton(
          child: const Text("View Workout"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExerciseList()),
            );
          },
      )
    );
  }
}
