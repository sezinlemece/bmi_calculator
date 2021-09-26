import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 45) {
      return 'Aşırı Obez';
    } else if (_bmi >= 35) {
      return 'Obez';
    } else if (_bmi >= 25) {
      return 'Fazla Kilolu';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Zayıf';
    }
  }

  String getInterpretation() {
    if (_bmi >= 45) {
      return 'Boyunuza göre kilonuz çok fazla! Acilen bir sağlık kuruluşuna başvurmalısınız.';
    } else if (_bmi >= 35) {
      return 'Boyunuza göre kilonuz çok fazla! Bir sağlık kuruluşuna başvurmalısınız.';
    } else if (_bmi >= 25) {
      return 'Fazla kilolu olma durumu gerekli önlemler alınmadığı takdirde'
          ' pek çok hastalık için risk faktörü olan obeziteye (şişmanlık) yol açar.';
    } else if (_bmi >= 18.5) {
      return ' Yeterli ve dengeli beslenerek ve düzenli fiziksel aktivite yaparak bu ağırlığınızı korumaya özen gösteriniz.';
    } else {
      return 'Boyunuza uygun ağırlığa erişmeniz için yeterli ve dengeli beslenmeli, beslenme alışkanlıklarınızı geliştirmeye özen göstermelisiniz.';
    }
  }
}
