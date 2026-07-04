import 'package:tflite_flutter/tflite_flutter.dart';

class DetectingProductsTFLite {
  DetectingProductsTFLite();

  Interpreter? _interpreter;
  IsolateInterpreter? _isolateInterpreter;

  Future<void> createInterpreter(String path) async {
    _interpreter = await Interpreter.fromAsset(path);
    _isolateInterpreter = await IsolateInterpreter.create(address: _interpreter!.address);
  }

  Future<List<dynamic>> getDetectedProducts(String inputPhoto) async {
    var output = List.filled(1*2, 0).reshape([1,2]);

    await _isolateInterpreter?.run(inputPhoto, output);

    return output;
  }

  Future<void> closeInterpreter() async {
    _interpreter?.close();
    await _isolateInterpreter?.close();
  }
}
