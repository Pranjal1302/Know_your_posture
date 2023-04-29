import 'package:yoga/bargraph/individualvar.dart';

class Bardata {
  final double sunAmount;
  final double monAmount;
  final double tuesAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;

  Bardata({
    required this.sunAmount,
    required this.monAmount,
    required this.tuesAmount,
    required this.wedAmount,
    required this.thurAmount,
    required this.friAmount,
    required this.satAmount,
  });

  List<individualbar> bardata = [];

  void initialbardata() {
    bardata = [
      individualbar(x: 0, y: sunAmount),
      individualbar(x: 0, y: monAmount),
      individualbar(x: 0, y: tuesAmount),
      individualbar(x: 0, y: wedAmount),
      individualbar(x: 0, y: thurAmount),
      individualbar(x: 0, y: friAmount),
      individualbar(x: 0, y: satAmount),
    ];
  }
}
