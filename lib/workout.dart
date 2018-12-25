class Workout{
  final String workoutName;
  Workout(this.workoutName);

  Workout.fromJson(Map<String, dynamic> json)
    : workoutName = json['workoutName'];

  Map<String, dynamic> toJson() => {
    'workoutName' : workoutName
  };
}