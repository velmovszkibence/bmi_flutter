import 'dart:math';

import 'components/gender.dart';

class Calculator {
  Calculator({this.age, this.height, this.weight, this.gender});

  final int age;
  final int height;
  final int weight;
  final String gender;

  double _result;

  String calculateBMI() {
    if (gender == 'Gender.male') {
      _result = 1.3 * weight / pow(height / 100, 2.6);
    } else {
      _result = weight / pow(height / 100, 1.8);
    }
    print(gender);
    print(_result);
    return _result.toStringAsFixed(1);
  }

  String getMenResult() {
    if (_result < 16) {
      return 'Testsúlyod jelenleg a súlyosan sovány tartományba esik.';
    } else if (_result > 15.99 && _result < 16.99) {
      return 'Testsúlyod jelenleg a közepesen sovány tartományba esik.';
    } else if (_result > 16.99 && _result < 18.5) {
      return 'Testsúlyod jelenleg az enyhén sovány tartományba esik.';
    } else if (_result > 18.49 && _result < 24.99) {
      return 'Testsúlyod jelenleg az egészséges tartományba esik.';
    } else if (_result > 25 && _result < 29.99) {
      return 'Testsúlyod jelenleg a túlsúlyos tartományba esik.';
    } else if (_result > 30 && _result < 34.99) {
      return 'Testsúlyod jelenleg az enyhén elhízott tartományba esik.';
    } else if (_result > 35 && _result < 39.99) {
      return 'Testsúlyod jelenleg a közepesen elhízott tartományba esik.';
    } else {
      return 'Testsúlyod jelenleg a súlyosan elhízott tartományba esik.';
    }
  }

  String getMenParagraph() {
    if (_result < 16) {
      return 'Lehetőleg minél hamarabb változtass az étrendeden! Próbálj meg többször enni és lehetőleg kalóriadús ételeket! Figyelj oda magadra!';
    } else if (_result > 15.99 && _result < 16.99) {
      return 'Az egészséges tartomány alatt vagy, így próbáld növelni a kalóriabeviteled! Semmiképpen se egyél kevesebbet! Próbálj naponta többször étkezni!';
    } else if (_result > 16.99 && _result < 18.5) {
      return 'Csak néhány kilót kellene felszedned, hogy az egészséges tartományba essen a testsúlyod. Picivel növeld a napi kalóriamennyiségedet! Nem sok hiányzik.';
    } else if (_result > 18.49 && _result < 24.99) {
      return 'Szuper formában vagy! Rendszeres mozgás és egészséges étkezés mellett ezt az állapotot fenntarthatod még jó sokáig. Csak így tovább!';
    } else if (_result > 25 && _result < 29.99) {
      return 'Van rajtad pár kiló plusz. Egy kis mozgással / étrendváltoztatással könnyen megszabadulhatsz tőle. Ha viszont így érzed jól magad, akkor csak arra figyelj, hogy a súlyod ne gyarapodjon tovább!';
    } else if (_result > 30 && _result < 34.99) {
      return 'Enyhén túlsúlyosnak számítasz. Próbálj rendszeresen mozogni! Ez nem azt jelenti, hogy túl kell erőltetned magad. Elég kétnaponta 30-40 perc mozgás és jelentős változást fogsz elérni!';
    } else if (_result > 35 && _result < 39.99) {
      return 'A túlsúllyal nagyobb az esélye az egészségügyi problémák kialakulásának. Próbálj rendszeresen mozogni (elég kétnaponta 30-40 perc sietős séta is) és emellett étkezz egészségesebben!';
    } else {
      return 'Mindenképpen változtatnod kell az életviteleden. Kezdj el mozogni (elég kétnaponta 30-40 perc síetős séta is)! Nem kell túlerőltetned magad. Emellett próbálj egészségesen étkezni és könnyen elkerülheted a túlsúllyal járó problémák kialakulását!';
    }
  }

  String getWomenResult() {
    if (_result < 16) {
      return 'Testsúlyod jelenleg a súlyosan sovány tartományba esik.';
    } else if (_result > 15.99 && _result < 16.99) {
      return 'Testsúlyod jelenleg a közepesen sovány tartományba esik.';
    } else if (_result > 16.99 && _result < 18.5) {
      return 'Testsúlyod jelenleg az enyhén sovány tartományba esik.';
    } else if (_result > 18.49 && _result < 24.99) {
      return 'Testsúlyod jelenleg az egészséges tartományba esik.';
    } else if (_result > 24.99 && _result < 29.99) {
      return 'Testsúlyod jelenleg a túlsúlyos tartományba esik.';
    } else if (_result > 29.99 && _result < 34.99) {
      return 'Testsúlyod jelenleg az enyhén elhízott tartományba esik.';
    } else if (_result > 34.99 && _result < 39.99) {
      return 'Testsúlyod jelenleg a közepesen elhízott tartományba esik.';
    } else {
      return 'Testsúlyod jelenleg a súlyosan elhízott tartományba esik.';
    }
  }

  String getWomenParagraph() {
    if (_result < 16) {
      return 'Lehetőleg minél hamarabb változtass az étrendeden! Próbálj meg többször enni és lehetőleg kalóriadús ételeket! Figyelj oda magadra!';
    } else if (_result > 15.99 && _result < 16.99) {
      return 'Az egészséges tartomány alatt vagy, így próbáld növelni a kalóriabeviteled! Semmiképpen se egyél kevesebbet! Próbálj naponta többször étkezni!';
    } else if (_result > 16.99 && _result < 18.5) {
      return 'Csak néhány kilót kellene felszedned, hogy az egészséges tartományba essen a testsúlyod. Picivel növeld a napi kalóriamennyiségedet! Nem sok hiányzik.';
    } else if (_result > 18.49 && _result < 24.99) {
      return 'Remek formában vagy! Táplálkozz egészségesen és mozogj rendszeresen, hogy továbbra is megtartsd a jelenlegi formád.';
    } else if (_result > 25 && _result < 29.99) {
      return 'Van rajtad pár kiló plusz. Egy kis mozgással / étrendváltoztatással könnyen megszabadulhatsz tőle. Ha viszont így érzed jól magad, akkor csak arra figyelj, hogy a súlyod ne gyarapodjon tovább!';
    } else if (_result > 30 && _result < 34.99) {
      return 'Enyhén túlsúlyosnak számítasz. Próbálj rendszeresen mozogni! Ez nem azt jelenti, hogy túl kell erőltetned magad. Elég kétnaponta 30-40 perc mozgás és jelentős változást fogsz elérni!';
    } else if (_result > 35 && _result < 39.99) {
      return 'A túlsúllyal nagyobb az esélye az egészségügyi problémák kialakulásának. Próbálj rendszeresen mozogni (elég kétnaponta 30-40 perc sietős séta is) és emellett étkezz egészségesebben!';
    } else {
      return 'Mindenképpen változtatnod kell az életviteleden. Kezdj el mozogni (elég kétnaponta 30-40 perc síetős séta is)! Nem kell túlerőltetned magad. Emellett próbálj egészségesen étkezni és könnyen elkerülheted a túlsúllyal járó problémák kialakulását!';
    }
  }
}
