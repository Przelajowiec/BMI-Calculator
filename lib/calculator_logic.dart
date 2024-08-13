import 'dart:math';

class CalculatorLogic {
  final int height;
  final int weight;
  late double _bmi;

  CalculatorLogic({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return "Otyłość";
    } else if (_bmi >= 25) {
      return "Nadwaga";
    } else if (_bmi >= 18.5) {
      return "Idealna waga";
    } else {
      return "Niedowaga";
    }
  }

  String getInterpetation() {
    if (_bmi >= 30) {
      return "Otyłość zwiększa ryzyko wielu poważnych chorób, w tym nadciśnienia, "
          "chorób serca i cukrzycy typu 2. Ważne jest, aby zasięgnąć porady medycznej "
          "i opracować plan działania.";
    } else if (_bmi >= 25) {
      return "Nadwaga może prowadzić do różnych problemów zdrowotnych, "
          "takich jak cukrzyca czy choroby serca. Rozważ wprowadzenie "
          "zdrowszych nawyków żywieniowych i zwiększenie aktywności fizycznej.";
    } else if (_bmi >= 18.5) {
      return "Gratulacje, Twoja waga mieści się w zdrowym zakresie! "
          "Kontynuuj regularną aktywność fizyczną i dbaj o zrównoważoną dietę, "
          "aby utrzymać swoje zdrowie.";
    } else {
      return "Twoja waga jest niższa od zalecanej "
          "dla zdrowego stylu życia. Rozważ skonsultowanie "
          "się z dietetykiem, aby ustalić plan posiłków, który pomoże "
          "Ci zyskać na wadze w sposób zdrowy.";
    }
  }
}