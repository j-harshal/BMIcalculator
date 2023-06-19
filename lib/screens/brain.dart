import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  double bmi = 50;
  String calculateBMI() {
     bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight'; 
    } else if (bmi > 18.5) {
      return 'normal';
    }
    else{
      return 'underweight';
    }
    
  }
  String getInterpretations(){
    if (bmi >= 25) {
      return 'You have higher bodyweight than normal, Try to do more exercise'; 
    } else if (bmi > 18.5) {
      return 'You have a Normal bodyweight. Good Job!!';
    }
    else{
      
    return 'You have lower bodyweight than normal, You can eat a bit more';
    }
  }
}
